/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos alunos deste registro dessa escola.
Crie uma tabela alunos/a/e e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos alunos/a/e para se trabalhar com o serviço dessa escola.
Popule esta tabela com até 8 dados;
Faça um select que retorne o/as alunos/a/e com a nota maior do que 7.
Faça um select que retorne o/as alunos/a/e com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_alunes  (
    id_alunes INT NOT NULL AUTO_INCREMENT,
    nome_alune VARCHAR(255),
    num_ra INT,
    grau VARCHAR(255),
    ano INT,
    nota FLOAT NULL,
    PRIMARY KEY (id_alunes)
);

INSERT INTO tb_alunes (nome_alune, num_ra, grau, ano, nota)
VALUES
('Fabiana Lopes', 2430, 'Ensino Médio', 2, 7.5),
('Paulo Teixeira', 2433, 'Ensino Médio', 2, 6.5),
('Tereza Souza', 2459, 'Ensino Médio', 1, 9.2),
('André Herculano', 2460, 'Ensino Médio', 1, 4.1),
('Henrique Calvo', 2416, 'Ensino Médio', 3, 8),
('Cristiano Evandro', 2415, 'Ensino Médio', 3, 7.3),
('Natasha Bona', 2458, 'Ensino Médio', 1, 4.5),
('Ana Freitas', 2417, 'Ensino Médio', 3, 10.0);

SELECT * FROM tb_alunes WHERE nota > 7.0;

SELECT * FROM tb_alunes WHERE nota < 7.0;

UPDATE tb_alunes
SET nota = '5.0'
WHERE id_alunes = 7;