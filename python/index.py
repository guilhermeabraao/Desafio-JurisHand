import requests;
import csv;

res = requests.get('http://localhost:3000/listar');

artigos = res.json();
categorias = {};
autores = {};
soma_palavras = 0;

for artigo in artigos:
    categoria = artigo["categoria"];
    if categoria in categorias:
        categorias[categoria] += 1;
    else:
        categorias[categoria] = 1;


for artigo in artigos:
    autor = artigo["autor"];
    if autor in autores:
        autores[autor] += 1;
    else:
        autores[autor] = 1;


for artigo in artigos:
    conteudo = artigo["conteudo"];
    palavras = conteudo.split();
    soma_palavras += len(palavras);

media_palavras = soma_palavras / len(artigos);

with open("relatorio.csv", "w", newline="") as arquivo_csv:
    writer = csv.writer(arquivo_csv)
    writer.writerow(["Quantidade de artigos por categoria"])
    writer.writerow(["Categoria", "Quantidade"])
    for categoria, quantidade in categorias.items():
        writer.writerow([categoria, quantidade])
    writer.writerow([])
    writer.writerow(["Quantidade de artigos por autor"])
    writer.writerow(["Autor", "Quantidade"])
    for autor, quantidade in autores.items():
        writer.writerow([autor, quantidade])
    writer.writerow([])
    writer.writerow(["Média de palavras por artigo"])
    writer.writerow([f"{media_palavras:.2f}"])