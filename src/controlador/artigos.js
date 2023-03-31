const knex = require('../conexao');

const listarArtigos = async (req, res) => {
    try {
        const resultado = await knex("artigos");
        if (resultado.length === 0) {
            return res.status(404).json({ "mensagem": "Não há registros no banco de dados!" })
        }
        return res.status(200).json(resultado);

    } catch (error) {
        return res.status(400).json(error.message)
    }

}

const filtrarCategoria = async (req, res) => {
    const { categoria } = req.body;

    if (!categoria) {
        return res.status(400).json({ "mensagem": "É necessário enviar uma categoria no corpo da requisição" })
    }

    try {
        const resultado = await knex("artigos").where({ categoria });
        if (resultado.length === 0) {
            return res.status(404).json({ "mensagem": "Categoria não encontrada!" })
        }
        return res.status(200).json(resultado);


    } catch (error) {
        return res.status(400).json(error.message)
    }

}

const buscarTermoChave = async (req, res) => {
    const { termo } = req.body;

    if (!termo) {
        return res.status(400).json({ "mensagem": "É necessário enviar um termo-chave no corpo da requisição" })
    }

    try {
        const resultado = await knex("artigos")
            .whereILike('titulo', `%${termo}%`)
            .orWhereILike('conteudo', `%${termo}%`);

        if (resultado.length === 0) {
            return res.status(404).json({ "mensagem": "Termo-chave não encontrado!" })
        }

        return res.status(200).json(resultado);


    } catch (error) {
        return res.status(400).json(error.message)
    }
}

module.exports = {
    listarArtigos,
    filtrarCategoria,
    buscarTermoChave
}