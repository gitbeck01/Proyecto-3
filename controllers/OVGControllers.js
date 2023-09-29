const { ObtenerVistaGeneral, Trailerflix } = require("../config/associations");
const ObtenerVistaGeneral = require("../models/ObtenerVistaGeneral");



// Controlador para obtener vista general
const obtenerVistaGeneral = async (req, res) => {
  try {
    const obtenerVistaGeneral = await ObtenerVistaGeneral.findAll();
    res.json(obtenerVistaGeneral);
  } catch (error) {
    console.error("Error al obtener vista general", error);
    res.status(500).json({ error: "Error al obtener vista general" });
  }
};

module.exports = {
    obtenerVistaGeneral,
  };