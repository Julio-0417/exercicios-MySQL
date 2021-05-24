/*Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco
deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as
informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.
siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.
Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos
onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
Faça um select utilizando LIKE buscando os Produtos com a letra J.
Faça um um select com Inner join entre tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria Java).
Salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_cursoDaMinhaVida; 
USE db_cursoDaMinhaVida; 

CREATE TABLE tb_categoria( 
id_categoria INT NOT NULL AUTO_INCREMENT,
nome_categoria VARCHAR(50),
area VARCHAR(50),
unidade VARCHAR(50),
PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_curso(
id_curso INT NOT NULL auto_increment,
nome_curso VARCHAR(100),
tipo VARCHAR(50),
coordenadore VARCHAR(100),
preco FLOAT,
fk_categoria INT,
PRIMARY KEY (id_curso),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (nome_categoria, area, unidade)
VALUES
('Musicalização','Arte','Centro'),
('Artes Plásticas','Arte','Centro'),
('Esportivo','Esporte','Sul'),
('Literatura','Arte','Leste'),
('Jardinagem','Recreação','Oeste');

INSERT INTO tb_curso (nome_curso, tipo, coordenadore, preco, fk_categoria)
VALUES
('Canto Lírico','Canto','Paula Menezes', 120.0, 1),
('Aquarela','Pintura','Arthur Dias', 100.0, 2),
('Violão Acústico','Instrumento Musical','Diana Brito', 150.0, 1),
('Literatura Espanhola','Leitura','Pedro Herculano', 80.0, 4),
('Gaita Diatônica','Instrumento Musical','Patrícia Paz', 100.0, 1),
('Cultivo de Orquídeas','Cultivares','Maria Lopes', 60.0, 2),
('Jogging','Corrida','Manuel Tavares', 50.0, 3),
('Esculturas com argila','Escultura','Demi Moura', 70.0, 2);

SELECT * FROM tb_curso WHERE preco > 50.0;

SELECT * FROM tb_curso WHERE preco BETWEEN 3.0 AND 60.0;

SELECT * FROM tb_curso WHERE nome_curso LIKE '%j%';

SELECT * FROM tb_categoria
INNER JOIN tb_curso
ON tb_categoria.id_categoria = tb_curso.fk_categoria;

SELECT * FROM tb_categoria
INNER JOIN tb_curso
ON tb_categoria.id_categoria = tb_curso.fk_categoria
WHERE nome_categoria = 'Musicalização';