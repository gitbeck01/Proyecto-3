const express = require("express");
const app = express();
const { db } = require("./config/db");
const PORT = process.env.PORT || 3000;

app.use(express.json());

app.use(async (req, res, next) => {
  try {
    await db.authenticate();
    next();
  } catch (error) {
    res
      .status(500)
      .json({ error: "Error en el servidor", description: error.message });
  }
});

const ActoresRouter = require("./routers/ActoresRouter");
const CategoriaRouter = require("./routers/CategoriaRouter");
const ContenidoRouter = require("./routers/ContenidoRouter");
const GeneroRouter = require("./routers/GeneroRouter");
const OVGRouter = require("./routers/OVGRouter");

app.get("/", (req, res) => {
  res.status(200).end("Bienvenido a la API con MySQL y Sequelize");
});

app.use("/actores/:id", ActoresRouter);
app.use("/contenido/:id", ContenidoRouter);
app.use("/categoria", CategoriaRouter);
app.use("/contenido/nombre", ContenidoRouter);
app.use("/genero/:nombre", GeneroRouter);
app.use("/obtenervistageneral", OVGRouter);


app.get('/categoria', async (req, res) => {
  try {
        const allCategoria = await categoria.findAll();

        allCategoria.length !== 0 ? res.status(200).json(allCategoria)
              : res.status(404).json({ error: "No se encontraron categorias para listar." });

  } catch (error) {
        res.status(500).json({ error: 'Error en el servidor', description: error.message });
  }
});

app.get('/contenido/:id', async (req, res) => {
  try {
        const { id } = req.params;
        const contenido = await contenido.findByPk(id);

        !contenido ? res.status(404).json({ error: "Contenido no encontrado." })
                 : res.status(200).json(product);
  } catch (error) {
        res.status(500).json({ error: 'Error en el servidor', 
                               description: error.message });
  }
});

app.get("/obtenervistageneral", async (req, res) => { //Vista SQL simple
  try {
        const allVista = await ObtenerVistaGeneral.findAll();
        
        allVista.length !== 0 ? res.status(200).json(allVista)
              : res.status(404).json({ error: "No se encontraron vistas." });

  } catch (error) {
        res.status(500).json({ error: 'Error en el servidor', 
                               description: error.message });
  }
});

app.get('/genero/categoria/:categoryID', async (req, res) => {
  try {
        const { categoryID } = req.params;
        const genero = await genero.findAll({ where: { categoryID } });

        !genero ? res.status(404).json({ error: 'Genero no encontrado' })
                  : res.status(200).json(genero);
  } catch (error) {
        res.status(500).json({ error: 'Error en el servidor', 
                               description: error.message });
  }
});

app.get('/actores/:id', async (req, res) => {
  try {
        const { id } = req.params;
        const actores = await actores.findByPk(id);

        !actores ? res.status(404).json({ error: "Artor no encontrado." })
                 : res.status(200).json(actores);
  } catch (error) {
        res.status(500).json({ error: 'Error en el servidor', 
                               description: error.message });
  }
});

app.get('/contenido/titulo', async (req, res) => {
  try {
        const { titulo } = req.params;
        const product = await titulo.findOne({ where: { titulo } });

        !titulo ? res.status(404).json({ error: 'Titulo no encontrado' })
                 : res.status(200).json(titulo);
  } catch (error) {
        res.status(500).json({ error: 'Error en el servidor', description: error.message });
  }
});



// Iniciar el servidor
app.listen(PORT, () => {
  console.log(`Servidor escuchando en el puerto ${PORT}`);
});
