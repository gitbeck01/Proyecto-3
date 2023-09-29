const { Genero, Trailerflix } = require("../config/associations");

// Controlador para crear un nuevo genero
const crearGenero = async (req, res) => {
  try {
    const Genero = await Genero.create(req.body);
    res.json(Genero);
  } catch (error) {
    console.error("Error al crear el genero", error);
    res.status(500).json({ error: "Error al crear el genero" });
  }
};

// Controlador para obtener todos los generos
const obtenerGenero = async (req, res) => {
  try {
    const genero = await Genero.findAll();
    res.json(genero);
  } catch (error) {
    console.error("Error al obtener el genero", error);
    res.status(500).json({ error: "Error al obtener el genero" });
  }
};

// Controlador para obtener un genero por ID
const obtenerGeneroPorId = async (req, res) => {
  const { id } = req.params;
  try {
    const genero = await Genero.findByPk(id);
    if (!genero) {
      res.status(404).json({ error: "Genero no encontrado" });
      return;
    }
    res.json(genero);
  } catch (error) {
    console.error("Error al obtener el genero por ID", error);
    res.status(500).json({ error: "Error al obtener el genero por ID" });
  }
};

// Controlador para actualizar un genero por ID
const actualizarGenero = async (req, res) => {
  const { id } = req.params;
  const { Nombre_genero } = req.body;
  try {
    const genero = await Genero.findByPk(id);
    if (!genero) {
      res.status(404).json({ error: "Genero no encontrado" });
      return;
    }

    await genero.update({Nombre_genero});
    res.json(genero);
  } catch (error) {
    console.error("Error al actualizar el genero", error);
    res.status(500).json({ error: "Error al actualizar el genero" });
  }
};

// Controlador para eliminar un genero por ID
const eliminarGenero = async (req, res) => {
  const { id } = req.params;
  try {
    const genero = await Genero.findByPk(id);
    if (!genero) {
      res.status(404).json({ error: "Genero no encontrado" });
      return;
    }
    await genero.destroy();
    res.json({ mensaje: "Genero eliminado correctamente" });
  } catch (error) {
    console.error("Error al eliminar el genero", error);
    res.status(500).json({ error: "Error al eliminar el genero" });
  }
};

module.exports = {
  crearGenero,
  obtenerGenero,
  obtenerGeneroPorId,
  actualizarGenero,
  eliminarGenero
};
