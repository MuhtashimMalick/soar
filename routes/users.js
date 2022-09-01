var express = require("express");
var router = express.Router();
const app = express();
const { spawn } = require("child_process");

/* GET users listing. */
router.get("/", function (req, res, next) {
  res.send('send some resource')
});

router.post("/", function (req, res, next) {
  var dataToSend;
  const playbooks = ["ansible-runner.py"];
  playbooks.push(JSON.stringify(req.body));
  console.log(playbooks);
  const python = spawn("python3", playbooks);
  // collect data from script
  python.stdout.on("data", function (data) {
    dataToSend = data.toString();
    console.log(dataToSend);
  });

  // in close event we are sure that stream from child process is closed
  python.on("close", (code) => {
    console.log(`child process close all stdio with code ${code}`);
    // send data to browser
    res.send(dataToSend);
  });
});

module.exports = router;
