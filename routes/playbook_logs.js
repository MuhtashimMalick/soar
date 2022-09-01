var express = require("express");
var router = express.Router();
const app = express();
const sequelize = require("../database");
const Playbook_Log_Read = require("../models/Playbook_Log_Read");
const Playbook_Log_Write = require("../models/Playbook_Log_Write");

router.get("/:id", function (req, res, next) {
  async function getLogs() {
    try {
      var playbook_logs = await Playbook_Log_Read.findAll({
        order: [["id", "DESC"]],
        limit : parseInt(req.params.id) || null
      });
    } catch (error) {
      console.error("Unable to connect to the database:", error);
    } finally {
      res.render("playbook_logs", { playbook_logs: playbook_logs });
    }
  }
  getLogs();
});

router.post("/", function (req, res, next) {
  async function insertLogs() {
    try {
      console.log("inserted");
      const log = await Playbook_Log_Write.create({
        logs: JSON.stringify(req.body),
      });
    } catch (error) {
      console.error("Unable to connect to the database:", error);
    } finally {
      res.send();
    }
  }
  insertLogs();
});

module.exports = router;
