// **********************************
// this is a sample migration file
// all migration files must have this structure
// **********************************

// "use strict";

// module.exports = {
//   async up(queryInterface, Sequelize) {
//     return queryInterface.createTable("linux", {
//       id: {
//         type: Sequelize.INTEGER(11),
//         allowNull: false,
//         primaryKey: true,
//         autoIncrement: true,
//       },
//       playbook_name: {
//         type: Sequelize.STRING(60),
//         allowNull: false,
//         unique: true,
//       },
//       playbook_class_name: {
//         type: Sequelize.STRING(60),
//         allowNull: false,
//         unique: true,
//       },
//       playbook_display_name: {
//         type: Sequelize.STRING(60),
//         allowNull: false,
//         unique: true,
//       },
//       playbook_html: {
//         type: Sequelize.TEXT,
//         allowNull: false,
//       },
//       playbook_path: {
//         type: Sequelize.STRING(60),
//         allowNull: false,
//       },
//       playbook_inputs: {
//         type: Sequelize.INTEGER(11),
//         allowNull: false,
//       },
//       playbook_outputs: {
//         type: Sequelize.INTEGER(11),
//         allowNull: false,
//       },
//     });
//   },

//   async down(queryInterface, Sequelize) {
//     return queryInterface.dropTable("linux")
//   },
// };
