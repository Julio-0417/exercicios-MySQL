/*Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.
O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.
siga exatamente esse passo a passo:
Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.
Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos personagens para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).
Popule esta tabela classe com até 5 dados.
Popule esta tabela personagem com até 8 dados.
Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
Faça um select utilizando LIKE buscando os personagens com a letra C.
Faça um um select com Inner join entre tabela classe e personagem.
Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
os personagens que são arqueiros).
salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_generation_game_online; 
USE db_generation_game_online; 

CREATE TABLE tb_classe( 
id_classe INT NOT NULL auto_increment,
nome_classe VARCHAR(255),
desvantagem_contra VARCHAR(255),
vantagem_contra VARCHAR(255),
PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagens(
id_person INT NOT NULL auto_increment,
nome_person VARCHAR(255),
ataque INT,
defesa INT,
regiao VARCHAR(255),
fk_classe INT,
PRIMARY KEY (id_person),
FOREIGN KEY (fk_classe) REFERENCES tb_classe(id_classe)
);

INSERT INTO tb_classe (nome_classe, desvantagem_contra, vantagem_contra)
VALUES
('Planta','Fogo','Água'),
('Fogo','Água','Planta'),
('Água','Planta','Fogo'),
('Voador','Elétrico','Terrestre'),
('Elétrico','Terrestre','Voador');

INSERT INTO tb_personagens (nome_person, ataque, defesa, regiao, fk_classe)
VALUES
('Leafeon','3000','2000','Sinnoh',1),
('Togekiss','4000','3500','Sinnoh',4),
('Pikachu','2500','1500','Kanto',5),
('Gyarados','3500','4000','Kanto',3),
('Ho-oh','4500','5000','Johto',2),
('Crobat','1500','2000','Johto',4),
('Torchic','500','700','Hoenn',2),
('Breloom','1700','1800','Hoenn',1);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_person LIKE '%c%';

SELECT * FROM tb_classe
INNER JOIN tb_personagens
ON tb_classe.id_classe = tb_personagens.fk_classe;

SELECT * FROM tb_classe
INNER JOIN tb_personagens 
ON tb_classe.id_classe = tb_personagens.fk_classe
WHERE nome_classe = 'Planta';
