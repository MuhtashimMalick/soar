const Sequelize = require("sequelize");
const sequelize = require("../database");

module.exports = sequelize.define(
  "other_playbooks",
  {
    id: {
      type: Sequelize.INTEGER(11),
      allowNull: false,
      primaryKey: true,
      autoIncrement: true,
    },
    playbook_name: {
      type: Sequelize.STRING(60),
      allowNull: false,
      unique: true,
    },
    playbook_class_name: {
      type: Sequelize.STRING(60),
      allowNull: false,
      unique: true,
    },
    playbook_display_name: {
      type: Sequelize.STRING(60),
      allowNull: false,
      unique: true,
    },
    playbook_html: {
      type: Sequelize.TEXT,
      allowNull: false,
    },
    playbook_path: {
      type: Sequelize.STRING(60),
      allowNull: false,
    },
    playbook_inputs: {
      type: Sequelize.INTEGER(11),
      allowNull: false,
    },
    playbook_outputs: {
      type: Sequelize.INTEGER(11),
      allowNull: false,
    },
    playbook_vault_password_path: {
      type: Sequelize.STRING(60),
      allowNull: true,
    },
    playbook_module_path: {
      type: Sequelize.STRING(60),
      allowNull: true,
    },
  },
  {
    timestamps: false,
  }
);
