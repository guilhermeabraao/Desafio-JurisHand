# Desafio-JurisHand
***

## Instalação das dependências

Para realizar a instalação das dependências necessárias para rodar a aplicação, será necessário abrir o terminal e executar o seguinte comando

>npm install or yarn install

***
## Configurações básicas do back-end

Necessário inserir as informações para conectar ao banco de dados no arquivo **conexao.js**.

![conexao](https://user-images.githubusercontent.com/112726349/229219572-b402e69e-f46b-4d99-8658-b766babe771c.png)

As querys para a criação do DB usado pela aplicação se encontram no arquivo **dump.sql**
***

## Rodando a aplicação

Para executar a aplicação, execute o comando no terminal

> npm run dev

A aplicação já estará rodando e você pode realizar testes unitários utilizando os códigos que se encontram no arquivo **testesUnitarios.txt**

***

## Script Python

Na pasta **python** contem 2 scripts, conforme a imagem

![python](https://user-images.githubusercontent.com/112726349/229220635-3751ab0a-803b-4aaf-8dd5-399c4fb534fa.png)

O arquivo **testeConexao.py** serve para testar se a comunicação entre a API e o script estão funcionando corretamente.
O arquivo **index.py** será o responsável por gerar um relatório, utilizando os dados recuperados pela API, com as seguintes informações:<br>
*Quantidade de artigos por categoria*<br>
*Quantidade de artigos por autor*<br>
*Média de palavras por artigo*
***

## Executando script Python

Para executar o script em python, basta abrir o terminal na pasta **python** e executar os seguintes comandos

>python index.py
>>**para gerar o relatório**

>python testeConexao.py
>>**para testar a comunicação com a API (caso necessário)**


