create database db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT auto_increment primary key,
	tipo VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_personagens(
	id BIGINT auto_increment primary key,
	nome VARCHAR(255) NOT NULL,
	nivel INT NOT NULL,
	ataque INT NOT NULL,
    defesa INT NOT NULL,
	classes_id BIGINT NOT NULL,
	foreign key(classes_id) references tb_classes(id)
);

INSERT INTO tb_classes(tipo, descricao)
VALUES("ATIRADOR", "AMADOR");
INSERT INTO tb_classes(tipo, descricao)
VALUES("ATIRADOR", "PROFISSIONAL");
INSERT INTO tb_classes(tipo, descricao)
VALUES("GUERREIRO", "AMADOR");
INSERT INTO tb_classes(tipo, descricao)
VALUES("GUERREIRO", "PROFISSIONAL");
INSERT INTO tb_classes(tipo, descricao)
VALUES("MAGO", "AMADOR");
INSERT INTO tb_classes(tipo, descricao)
VALUES("MAGO", "PROFISSIONAL");


INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classes_id)
VALUES("Eduardo", "100", "2000", "1200", "6");
INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classes_id)
VALUES("Carlos", "32", "800", "600", "5");
INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classes_id)
VALUES("Ana", "1", "100", "200", "3");
INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classes_id)
VALUES("Lucas", "67", "1200", "700", "1");
INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classes_id)
VALUES("Giovanna", "101", "2300", "2000", "4");

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa > 1000 and defesa < 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%" or "%c%";

SELECT nome, nivel, ataque, defesa, tb_classes.tipo, tb_classes.descricao
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classes_id = tb_classes.id;

SELECT nome, nivel, ataque, defesa, tb_classes.tipo
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classes_id = tb_classes.id WHERE tb_personagens.classes_id = 4;



