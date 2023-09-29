const express = require('express');
const router = express.Router();
const actoresControllers = require('../controllers/actoresControllers');


// Rutas para el modelo de Actores

// Ruta para crear un nuevo actor
router.post('/actores', actoresControllers.crearActor);

// Ruta para obtener todos los actores
router.get('/actores', actoresControllers.obtenerGenero);

// Ruta para obtener un actor por ID
router.get('/actores/:id', actoresControllers.obtenerActorPorId);

// Ruta para actualizar un actor por ID
router.put('/actores/:id', actoresController.actualizarActor);

// Ruta para eliminar un actor por ID
router.delete('/actores/:id', actoresController.eliminarActor);

module.exports = router;