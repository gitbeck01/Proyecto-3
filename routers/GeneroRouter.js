const express = require("express");
const router = express.Router();
const generoControllers = require("../controllers/generoControllers");

// Rutas para el modelo de Genero

// Ruta para crear un nuevo genero
router.post('/genero', generoControllers.crearGenero);

// Ruta para obtener todos los generos
router.get('/genero', generoControllers.obtenerGenero);

// Ruta para obtener un genero por ID
router.get('/genero/:id', generoControllers.obtenerGeneroPorId);

// Ruta para actualizar un genero por ID
router.put('/genero/:id', generoController.actualizarGenero);

// Ruta para eliminar un genero por ID
router.delete('/genero/:id', generoController.eliminarGenero);

module.exports = router;
