const Sequelize = require('sequelize');
const { db } = require("../config/db");

  const Genero = db.define('Genero', {
    Genero_ID: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    Nombre_genero: {
      type: Sequelize.STRING(30),
      allowNull: false
    }
  }, { tableName: "Genero", timestamps: false });

  module.exports = Genero;



