create database jurishand;

create table artigos(
id serial primary key,
  titulo text not null,
  autor text not null, 
  conteudo text not null,
  data_publicacao date not null,
  categoria text not null
);

-- DADOS DE TESTE
INSERT INTO artigos (titulo, autor, conteudo, data_publicacao, categoria)
VALUES
('Direitos das famílias homoafetivas', 'Juliana Oliveira', 'O presente artigo analisa a questão da garantia dos direitos das famílias homoafetivas no Brasil, considerando as recentes decisões do STF.', '2021-07-15', 'constitucional'),
('A responsabilidade civil das empresas em acidentes de trabalho', 'Pedro Silva', 'O presente artigo discute a responsabilidade civil das empresas em casos de acidentes de trabalho, considerando a legislação trabalhista brasileira.', '2021-07-17', 'trabalhista'),
('A criminalização da violência sexual contra mulheres', 'Isabela Santos', 'O presente artigo analisa o enquadramento legal da violência sexual contra mulheres, discutindo sua efetividade na proteção das vítimas.', '2021-07-18', 'penal'),
('A mediação como forma de resolução de conflitos familiares', 'Laura Oliveira', 'O presente artigo discute a utilização da mediação como forma de resolver conflitos familiares, a partir de uma perspectiva jurídica.', '2021-07-19', 'civil'),
('A proteção dos direitos do consumidor na internet', 'Fernanda Souza', 'O presente artigo analisa a questão da proteção dos direitos do consumidor na internet, considerando as recentes decisões do Poder Judiciário brasileiro.', '2021-07-20', 'civil'),
('A aplicação da Teoria da Imputação Objetiva no Direito Penal', 'Gabriel Santos', 'O presente artigo discute a aplicação da Teoria da Imputação Objetiva no Direito Penal brasileiro, a partir de uma perspectiva jurisprudencial.', '2021-07-22', 'penal'),
('A responsabilidade das empresas em casos de danos ambientais', 'Thiago Oliveira', 'O presente artigo analisa a responsabilidade das empresas em casos de danos ambientais, considerando a legislação ambiental brasileira.', '2021-07-24', 'civil'),
('Os limites da liberdade de expressão na internet', 'Juliana Oliveira', 'O presente artigo discute os limites da liberdade de expressão na internet, a partir de uma perspectiva jurídica.', '2021-07-25', 'constitucional'),
('O uso de drogas e a legislação brasileira', 'Lucas Santos', 'O presente artigo analisa a questão do uso de drogas no Brasil, considerando as leis que regem a matéria e os debates em torno da descriminalização.', '2021-07-26', 'penal'),
('A proteção dos direitos autorais na era digital', 'Thiago Oliveira', 'O presente artigo discute a proteção dos direitos autorais em um contexto em que a reprodução e a distribuição de conteúdos digitais se tornou mais fácil.', '2021-07-27', 'civil'),
('A utilização do Direito Penal como instrumento de políticas públicas', 'Pedro Santos', 'O presente artigo analisa a utilização do Direito Penal como instrumento de políticas públicas, a partir de uma perspectiva crítica.', '2021-07-28', 'penal'),
('A proteção dos direitos do trabalhador na era da flexibilização', 'Roberta Oliveira', 'O presente artigo discute a proteção dos direitos do trabalhador em um contexto em que a flexibilização das relações trabalhistas se tornou mais comum.', '2021-07-29', 'trabalhista'),
('A proteção constitucional da privacidade na era digital', 'Thiago Oliveira', 'O presente artigo analisa a proteção constitucional da privacidade em um contexto em que a coleta e o tratamento de dados pessoais se tornaram mais frequentes.', '2021-07-30', 'constitucional'),
('A proteção dos direitos das crianças e adolescentes no sistema de Justiça', 'Luciana Oliveira', 'O presente artigo discute a proteção dos direitos das crianças e adolescentes no sistema de Justiça brasileiro, a partir de uma perspectiva crítica.', '2021-08-01', 'civil');
