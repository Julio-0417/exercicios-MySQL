/*Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.
Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
Faça um select utilizando LIKE buscando os Produtos com a letra B.
Faça um um select com Inner join entre tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_farmacia_do_bem; 
USE db_farmacia_do_bem; 

CREATE TABLE tb_categoria( 
id_categoria INT NOT NULL auto_increment,
nome_categoria VARCHAR(255),
setor INT,
acesso VARCHAR(255),
PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produto(
id_produto INT NOT NULL auto_increment,
nome_produto VARCHAR(255),
marca VARCHAR(255),
descricao VARCHAR(255),
preco FLOAT,
fk_categoria INT,
PRIMARY KEY (id_produto),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (nome_categoria, setor, acesso)
VALUES
('Medicamento','1','Restrito'),
('Higiene','2','Público'),
('Cosméticos','3','Público'),
('Perfumaria','4','Público'),
('Infantil','5','Público');

INSERT INTO tb_produto (nome_produto, marca, descricao, preco, fk_categoria)
VALUES
('Colgate Tripla Ação','Colgate','Creme Dental',4.50,2),
('Ibuprofeno 400mg','NeoQuímica','Anti-inflamatório',9.99,1),
('Pampers ComfortSec G','Pampers','Fralda Tamanho G',66.5,5),
('Esmalte Risqué','3500','Cor Antes que Saturno volte',2.49,4),
('Loreal solar expertise Fator 50','Loreal','Protetor Solar facial', 60.0,3),
('Amoxicilina 1g','Medley','Antibiótico', 35.7, 1),
('Opti-free pure moist 300ml','Alcori','Soro lente de contato',64.9, 2),
('Hydro boost Neutrogena','Neutrogena','Creme Hidratante Facial', 69.9, 3);

SELECT * FROM tb_produto WHERE preco > 50.0;

SELECT * FROM tb_produto WHERE preco BETWEEN 3.0 AND 60.0;

SELECT * FROM tb_produto WHERE nome_produto LIKE '%b%';

SELECT * FROM tb_categoria
INNER JOIN tb_produto
ON tb_categoria.id_categoria = tb_produto.fk_categoria;

SELECT * FROM tb_categoria
INNER JOIN tb_produto
ON tb_categoria.id_categoria = tb_produto.fk_categoria
WHERE nome_categoria = 'Medicamento';