const express = require('express');

const { listarArtigos, filtrarCategoria, buscarTermoChave } = require('./controlador/artigos');

const roteador = express();

roteador.get('/listar', listarArtigos);
roteador.get('/filtrar', filtrarCategoria);
roteador.get('/buscar', buscarTermoChave);

module.exports = roteador;