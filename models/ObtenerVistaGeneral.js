const Sequelize = require('sequelize');
const { db } = require("../config/db");

const ObtenerVistaGeneral = db.fefine("ObtenerVistaGeneral", {
    id:{
        type: DataTypes.INTEGER,
        autoIncrement: false,
        primaryKey: true,
    },
    poster: {
        type: DataTypes.STRING,
    },
    titulo: {
        type: DataTypes.STRING,
    },
    categoria: {
        type: DataTypes.STRING,
    },
    genero: {
        type: DataTypes.STRING,
    },
    resumen: {
        type: DataTypes.STRING,
    },
    temporadas: {
        type: DataTypes.INTEGER,
    },
    actores: {
        type: DataTypes.STRING,
    },
    trailer: {
        type: DataTypes.STRING,
    },
},
{
    tableName: "ObtenerVistaGeneral",
    timestams: false,
}  
)

module.exports = ObtenerVistaGeneral;