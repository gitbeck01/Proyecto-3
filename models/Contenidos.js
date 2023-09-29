const Sequelize = require('sequelize');
const { db } = require("../config/db");

  const Contenido = db.define('Contenido', {
    Contenido_id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    Contenido: {
      type: Sequelize.TEXT,
      allowNull: false
    }
  },  { tableName: "Contenido", timestamps: false });



  module.exports = Contenido;

