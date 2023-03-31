const knex = require('knex')({
    client: 'mysql',
    connection: {
        user: 'insira seu usuário',
        host: 'insira o host do DB',
        database: 'jurishand',
        password: 'senha do DB',
        port: "insira a porta utilizada no DB"
    }
});

module.exports = knex;