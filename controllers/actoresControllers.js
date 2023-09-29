const { Actores, trailerflix } = require("../config/associations");

// Crear un nuevo registro
 const crearActor = async (req, res) => {
  const { Actores_ID } = req.body;

  try {
    const actores = await Actores.create({
      Actores_ID,
      
    });

    res.json(actores);
  } catch (error) {
    console.error("Error al crear un nuevo actor", error);
    res
      .status(500)
      .json({ error: "Error al crear un nuevo actor" });
  }
};

// Obtener todos los registros
const obtenerActores = async (req, res) => {
  try {
    const actores = await Actores.findAll();
    res.json(actores);
  } catch (error) {
    console.error("Error al obtener los registros de actores", error);
    res
      .status(500)
      .json({ error: "Error al obtener los registros de actores" });
  }
};

// Actualizar un registro de actor por ID
const actualizarActor = async (req, res) => {
  const { id } = req.params;
  const { Actor_ID, } = req.body;

  try {
    const actores = await Actores.findByPk(id);
    if (!actores) {
      res
        .status(404)
        .json({ error: "Registro de actores no encontrado" });
      return;
    }

    await actores.update({
      Actor_ID,
    });

    res.json(actores);
  } catch (error) {
    console.error("Error al actualizar un registro de actor", error);
    res
      .status(500)
      .json({ error: "Error al actualizar un registro de actor" });
  }
};

// Eliminar un registro de actor por ID
const eliminarActor = async (req, res) => {
  const { id } = req.params;

  try {
    const actores = await Actores.findByPk(id);
    if (!actores) {
      res
        .status(404)
        .json({ error: "Registro de actor no encontrado" });
      return;
    }

    await actores.destroy();

    res.json({ message: "Registro de actor eliminado exitosamente" });
  } catch (error) {
    console.error("Error al eliminar un registro de actor", error);
    res
      .status(500)
      .json({ error: "Error al eliminar un registro de actor" });
  }
};


module.exports = {
  crearActor,
  obtenerActores,
  actualizarActor,
  eliminarActor,
};
