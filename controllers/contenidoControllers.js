const { Contenido, Trailerflix } = require("../config/associations");

// Crear un contenido
const crearContenido = async (req, res) => {
const { Contenido_contenido, ID } = req.body;
  try {
    const comentario = await Comentario.create({
      Contenido_contenido,
      ID,
    });
    res.json(contenido);
  } catch (error) {
    console.error("Error al crear contenido", error);
    res.status(500).json({ error: "Error al crear contenido" });
  }
};

// Obtener todos los contenidos
const obtenerContenidos = async (req, res) => {
  try {
    const contenido = await Contenido.findAll();
    res.json(contenido);
  } catch (error) {
    console.error("Error al obtener contenidos", error);
    res.status(500).json({ error: "Error al obtener contenidos" });
  }
};

// Obtener un contenido por ID
const obtenerContenidoPorId = async (req, res) => {
  const { id } = req.params;
  try {
    const contenido = await Contenido.findByPk(id);
    if (!contenido) {
      res.status(404).json({ error: "Contenido no encontrado" });
      return;
    }
    res.json(contenido);
  } catch (error) {
    console.error("Error al obtener contenido por ID", error);
    res.status(500).json({ error: "Error al obtener contenido por ID" });
  }
};


// Actualizar un contenido por ID
const actualizarContenido = async (req, res) => {
  const { id } = req.params;
  const { Contenido_contenido, Contenido_ID } = req.body;

  try {
    const contenido = await Contenido.findByPk(id);
    if (!contenido) {
      res.status(404).json({ error: "Contenido no encontrado" });
      return;
    }

    await contenido.update({
      Contenido_contenido,
      Contenido_ID,
    });

    res.json(contenido);
  } catch (error) {
    console.error("Error al actualizar contenido", error);
    res.status(500).json({ error: "Error al actualizar contenido" });
  }
};

// Eliminar un contenido por ID
const eliminarContenido = async (req, res) => {
  const { id } = req.params;
  try {
    const deletedRowCount = await Contenido.destroy({
      where: { Contenido_id: id },
    });

    if (deletedRowCount === 0) {
      res.status(404).json({ error: "Contenido no encontrado" });
      return;
    }

    res.json({ message: "Contenido eliminado con éxito" });
  } catch (error) {
    console.error("Error al eliminar contenido", error);
    res.status(500).json({ error: "Error al eliminar contenido" });
  }
};

module.exports = {
  crearContenido,
  obtenerContenidos,
  obtenerContenidoPorId,
  actualizarContenido,
  eliminarContenido,
};
