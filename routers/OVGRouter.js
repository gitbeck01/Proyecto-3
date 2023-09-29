const express = require('express');
const router = express.Router();
const OVGControllers = require('../controllers/OBGControllers');


// Ruta para obtener vista general
router.get("/obtenervistageneral", OVGControllers.OVGRouter);

module.exports = router;