/*Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_funcionaries (
id_func INT NOT NULL AUTO_INCREMENT,
nome_func VARCHAR(255),
email VARCHAR(255),
salario FLOAT NULL,
data_adm DATE,
ramal int,
PRIMARY KEY (id_func)
);

tb_funcionariesINSERT INTO tb_funcionaries (nome_func, email, salario, data_adm, ramal)
VALUES
('Pedro', 'pedropascal@gmail.com', 3000.6, '2018-09-17', 321),
('Joaquim', 'joaquimteixeira@gmail.com', 1600.8, '2021-01-12', 326),
('Janaína', 'janainacarvalho@outlook', 7500.2, '2015-05-21', 365),
('Ludmila', 'ludmilapaz@gmail.com', 4001.7, '2016-11-18', 325),
('André', 'andreluz@hotmail.com', 1900.4, '2020-08-29', 322);

SELECT * FROM tb_funcionaries WHERE salario < 2000.0;

SELECT * FROM tb_funcionaries WHERE salario > 2000.0;

UPDATE tb_funcionaries 
SET email = 'janainacarvalho@gmail.com'
WHERE id_func = 3;





