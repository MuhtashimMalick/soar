var express = require("express");
var router = express.Router();
const app = express();
const { spawn } = require("child_process");
const sequelize = require("../database");
const Linux_Playbook = require("../models/Linux_Playbook");
const Windows_Playbook = require("../models/Windows_Playbook");
const Other_Playbook = require("../models/Other_Playbook");

/* GET home page. */
router.get("/", function (req, res, next) {
  async function getPlaybooks() {
    try {
      var linux_playbooks = await Linux_Playbook.findAll();
      var windows_playbooks = await Windows_Playbook.findAll();
      var other_playbooks = await Other_Playbook.findAll();
    } catch (error) {
      console.error("Unable to connect to the database:", error);
    } finally {
      res.render("index", {
        linux_playbooks: linux_playbooks,
        windows_playbooks: windows_playbooks,
        other_playbooks: other_playbooks,
      });
    }
  }
  getPlaybooks();
});

router.post("/", (req, res) => {
  const playbooks = ["ansible-runner.py"];
  const keys = Object.keys(req.body);
  var firstNode;

  keys.map((key) => {
    if (req.body[key].inputs.input_1.connections.length == 0) {
      playbooks.push(
        JSON.stringify({ name: req.body[key].name, data: req.body[key].data })
      );
      firstNode = key;
    }
  });

  if (playbooks.length > 1) {
    while (true) {
      if (req.body[firstNode].outputs.output_1.connections.length != 0) {
        const outputNode =
          req.body[firstNode].outputs.output_1.connections[0].node;
        playbooks.push(
          JSON.stringify({
            name: req.body[outputNode].name,
            data: req.body[outputNode].data,
          })
        );
        firstNode = outputNode;
      } else {
        break;
      }
    }
  }
  console.log(playbooks);

  if (playbooks.length > 1) {
    var dataToSend;
    // spawn new child process to call ansible-runner.py
    const python = spawn("python3", playbooks);
    // collecting data from ansible-runner.py
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
  } else {
    console.log("no playbook to be executed");
    res.send();
  }
});

module.exports = router;
