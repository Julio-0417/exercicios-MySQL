/*Crie um banco de dados para um serviço de um açougue ou uma quitanda, o nome do
banco deverá ter o seguinte nome db_cidade_das_carnes ou db_cidade_das_frutas, onde o
sistema trabalhará com as informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desse açougue.
Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de
criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
Faça um select utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são aves ou legumes).
Salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_cidade_das_frutas; 
USE db_cidade_das_frutas; 

CREATE TABLE tb_categoria( 
id_categoria INT NOT NULL AUTO_INCREMENT,
nome_categoria VARCHAR(255),
corredor INT,
referencia VARCHAR(255),
PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produto(
id_produto INT NOT NULL auto_increment,
nome_produto VARCHAR(255),
produtore VARCHAR(255),
estoque VARCHAR(255),
preco FLOAT,
fk_categoria INT,
PRIMARY KEY (id_produto),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (nome_categoria, corredor, referencia)
VALUES
('Frutas','2','quilograma'),
('Legumes','2','quilograma'),
('Hortaliças','3','unidade'),
('Tubérculos','1','quilograma'),
('Grãos','1','quilograma');

INSERT INTO tb_produto (nome_produto, produtore, estoque, preco, fk_categoria)
VALUES
('Abacaxi Pérola','Campo Azul','caixa',6.99,1),
('Alface Crespa','Minha Horta','caixa',2.50,3),
('Feijão Carioca','Magna Grãos','sacada',7.50,5),
('Mexerica Cravo','Rosa Flor','caixa',4.30,1),
('Abacate','Abacate Legal','caixa', 5.90,1),
('Abobrinha','Bloom Alimentos','caixa', 3.20, 2),
('Cenoura','Cooperativa Almeida','caixa', 6.90, 4),
('Batata Asterix','Cooperativa do Vale','caixa', 9.99, 4);

SELECT * FROM tb_produto WHERE preco > 50.0;

SELECT * FROM tb_produto WHERE preco BETWEEN 3.0 AND 60.0;

SELECT * FROM tb_produto WHERE nome_produto LIKE '%c%';

SELECT * FROM tb_categoria
INNER JOIN tb_produto
ON tb_categoria.id_categoria = tb_produto.fk_categoria;

SELECT * FROM tb_categoria
INNER JOIN tb_produto
ON tb_categoria.id_categoria = tb_produto.fk_categoria
WHERE nome_categoria = 'Frutas';