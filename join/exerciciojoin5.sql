/*Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome
do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema
trabalhará com as informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
Siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.
Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos (não
esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
Faça um select utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria hidráulica).
Salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_construindo_a_nossa_vida; 
USE db_construindo_a_nossa_vida; 

CREATE TABLE tb_categoria( 
id_categoria INT NOT NULL auto_increment,
nome_categoria VARCHAR(255),
corredor INT,
disponibilidade VARCHAR(255),
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

INSERT INTO tb_categoria (nome_categoria, corredor, disponibilidade)
VALUES
('Ferramentas','4','Loja'),
('Materiais de Construção','5','Entrega Local'),
('Louças','3','Loja'),
('Revestimento','2','Entrega Local'),
('Decoração','1','Loja');

INSERT INTO tb_produto (nome_produto, marca, descricao, preco, fk_categoria)
VALUES
('Furadeira GSB13RE','Bosch','Furadeira de impacto', 290.67, 1),
('Cuba Boss','Incepa','Cuba de Semi encaixe', 519.9, 3),
('Porcelanato Álamo Rústico','Portobello','Porcelanato amadeirado (m2)', 54.9, 4),
('Ficus lyrata 125cm','MagnaFlora','Planta Ficus lyrata', 654.5, 5),
('Telha PVC Colonial','Permatti','Telha feita de PVC', 119.9, 2),
('Lixeira Inox c/ Pedal','Coisas & Coisinhas','Lixeira de banheiro', 37.9, 5),
('Chave Phillips','Tramontina','Chave Phillips 15cm', 7.9, 1),
('Tinta Acrílica Premium Fosco','Suvinil','Tinta Acrílica 800ml cor neblina', 39.9, 4);

SELECT * FROM tb_produto WHERE preco > 50.0;

SELECT * FROM tb_produto WHERE preco BETWEEN 3.0 AND 60.0;

SELECT * FROM tb_produto WHERE nome_produto LIKE '%c%';

SELECT * FROM tb_categoria
INNER JOIN tb_produto
ON tb_categoria.id_categoria = tb_produto.fk_categoria;

SELECT * FROM tb_categoria
INNER JOIN tb_produto
ON tb_categoria.id_categoria = tb_produto.fk_categoria
WHERE nome_categoria = 'Decoração';