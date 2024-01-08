CREATE DATABASE db_RH;
USE db_RH;

CREATE TABLE tb_colaboradoress(
	id BIGINT auto_increment primary key,
	nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    cpf char(11) NOT NULL,
    salario DECIMAL
);
INSERT INTO tb_colaboradoress(nome, idade, cpf, salario) 
VALUES ("Eduardo", 23, "49039232453", 15000);
INSERT INTO tb_colaboradoress(nome, idade, cpf, salario) 
VALUES ("Fabricia", 25, "49031232453", 3000);
INSERT INTO tb_colaboradoress(nome, idade, cpf, salario) 
VALUES ("Ana", 26, "49032232453", 2000);
INSERT INTO tb_colaboradoress(nome, idade, cpf, salario) 
VALUES ("Luciana", 20, "49889232453", 1500);
INSERT INTO tb_colaboradoress(nome, idade, cpf, salario) 
VALUES ("Giovanna", 22, "49039232422", 20000);

SELECT * FROM tb_colaboradoress WHERE salario > 2000;
SELECT * FROM tb_colaboradoress WHERE salario <= 2000;

UPDATE tb_colaboradoress SET salario = 2000 WHERE Id = 4;
