const Sequelize = require("sequelize");

const sequelize = new Sequelize("dragNdrop", "muhtashim", "8864", {
  host: "127.0.0.1",
  dialect: "mariadb",
  operatorAliases: false,
});

async function testConnection() {
  try {
    await sequelize.authenticate();
    console.log("Connection has been established successfully.");
  } catch (error) {
    console.error("Unable to connect to the database:", error);
  }
}
testConnection();

module.exports = sequelize;
