const express = require('express');
const router = express.Router();
const contenidoController = require('../controllers/contenidoControllers');

// Rutas para las categorías
router.get('/contenido', contenidoController.obtenerContenido);
router.post('/contenido', contenidoController.crearContenido);
router.get('/contenido/:id', contenidoController.obtenerContenidoPorId);
router.put('/contenido/:id', contenidoController.actualizarContenido);
router.delete('/contenido/:id', contenidoController.eliminarContenido);

module.exports = router;