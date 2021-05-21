/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as 
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_ecommercefarmaco;
USE db_ecommercefarmaco;

CREATE TABLE tb_produto  (
    id_prod INT NOT NULL AUTO_INCREMENT,
    nome_prod VARCHAR(255),
    marca VARCHAR(255),
    categoria VARCHAR(255),
    preco FLOAT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id_prod)
);

INSERT INTO tb_produto (nome_prod, marca, categoria, preco, descricao)
VALUES
('Esmalte', 'Mohda', 'Cosméticos', 3.90, 'Esmalte para unhas'),
('Protetor Solar', 'Sundown', 'Protetores Solares', 30.90, 'Protetor Solar corporal Fator 30 FPS'),
('Novalgina 1G', 'Novalgina', 'Remédios', 4.90, 'Analgésico Dipirona Monoidratada 1g'),
('Creme Dental', 'Sensodyne', 'Higiene', 12.39, 'Creme Dental anti-cáries'),
('Creme Cerave', 'Cerave', 'Cosméticos', 80.31, 'Creme corporal Cerave com loção hidratante'),
('Rose The One', 'Dolce&Gabbana', 'Perfumes', 1207.80, 'Perfume Rose The One by Dolce&Gabbana'),
('Aspirina', 'Bayer', 'Remédios', 1.80, 'Analgésico Aspirina'),
('Fralda G', 'Pampers', 'Bebês', 98.7, 'Fralda tamanho G Simples Pampers');

SELECT * FROM tb_produto WHERE preco < 500.0;

SELECT * FROM tb_produto WHERE preco > 500.0;

UPDATE tb_ecommercefarmaco
SET nome = 'Fralda Pampers Pants Adjust G'
WHERE id_func = 8;