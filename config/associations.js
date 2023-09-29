const Contenido = require("../models/Contenido");
const Categoria = require('../models/Categoria');
const Genero = require('../models/Genero');
const Actores = require('../models/Actores');
const Contenido_categoria = require('../models/Contenido_categoria');
const Contenido_genero = require('../models/Contenido_genero');
const Contenido_actor = require("../models/Contenido_actor");



// Relación contenido-categoría
Contenido.belongsTo(Categoria, {
    foreignKey: 'categoria_id',
    as: 'categoria',
  });
  
  // Relación contenido-género
  Contenido.hasMany(Genero, {
    foreignKey: 'contenido_id',
    as: 'generos',
  });
  
  // Relación contenido-actor
  Contenido.hasMany(Actor, {
    foreignKey: 'contenido_id',
    as: 'actores',
  });
  
// Relación contenido-actor
Contenido.hasMany(Actor, {
    foreignKey: 'contenido_id',
    as: 'actores',
  });
  
  // Relación actor-contenido
  Actor.belongsToMany(Contenido, {
    through: 'contenido_actor',
    foreignKey: 'actor_id',
    as: 'contenidos',
  });
  

module.exports = {
    Contenido,
    Categoria,
    Genero,
    Actores,
    Contenido_categoria,
    Contenido_genero,
    Contenido_actor,
};