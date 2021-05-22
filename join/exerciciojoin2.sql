/*Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.
siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.
Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela pizza com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 45 reais.
Faça um select trazendo os Produtos com valor entre 29 e 60 reais.
Faça um select utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre tabela categoria e pizza.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_pizzaria_legal; 
USE db_pizzaria_legal; 

CREATE TABLE tb_categoria( 
id_categoria INT NOT NULL auto_increment,
nome_categoria VARCHAR(255),
borda VARCHAR(255),
massa VARCHAR(255),
PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_pizza(
id_pizza INT NOT NULL auto_increment,
nome_pizza VARCHAR(255),
descricao VARCHAR(255),
tamanho VARCHAR(255),
preco FLOAT,
fk_categoria INT,
PRIMARY KEY (id_pizza),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (nome_categoria, borda, massa)
VALUES
('Clássica','Sem Recheio','Fina'),
('Especial','Recheada','Média'),
('Premium','Recheada','Grossa'),
('Doce','Sem Recheio','Média'),
('Vegetariana','Sem Recheio','Média');

INSERT INTO tb_pizza (nome_pizza, descricao, tamanho, preco, fk_categoria)
VALUES
('Calabresa','Calabresa e Cebola','Padrão',35.0,1),
('Mussarela','Mussarela e Orégano','Padrão',35.0,1),
('Palmito','Palmito e Mussarela','Padrão',38.0,5),
('Frango com Catupiry','Frango e Catupiry','Padrão',40.0,2),
('Brigadeiro','Chocolate e Granulado','Pequeno',36.0,4),
('Banana com canela','Banana e Canela','Pequeno',36.0,4),
('Quatro queijos','Mussarela, Catupiry, Gorgonzola e Parmesão','Padrão',42.0,3),
('Escarola','Escarola e Mussarela','Padrão',38.0,5);

SELECT * FROM tb_pizza WHERE preco > 45.0;

SELECT * FROM tb_pizza WHERE preco BETWEEN 29.0 AND 60.0;

SELECT * FROM tb_pizza WHERE nome_pizza LIKE '%c%';

SELECT * FROM tb_categoria
INNER JOIN tb_pizza
ON tb_categoria.id_categoria = tb_pizza.fk_categoria;

SELECT * FROM tb_categoria
INNER JOIN tb_pizza
ON tb_categoria.id_categoria = tb_pizza.fk_categoria
WHERE nome_categoria = 'Vegetariana';
