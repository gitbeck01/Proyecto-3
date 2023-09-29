const Sequelize = require('sequelize');
const { db } = require("../config/db");


  const Actores = db.define('Actores', {
    actores_ID: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    }
  }, { tableName: "actores", timestamps: false });

  module.exports = Actores;

