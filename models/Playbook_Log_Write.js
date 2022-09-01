const Sequelize = require("sequelize");
const sequelize = require("../database");

module.exports = sequelize.define(
  "playbook_logs",
  {
    id: {
      type: Sequelize.INTEGER(11),
      allowNull: false,
      primaryKey: true,
      autoIncrement: true,
    },
    logs: {
      type: Sequelize.TEXT,
      allowNull: false,
    },
  },
  {
    timestamps: false,
  }
);
