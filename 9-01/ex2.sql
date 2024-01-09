create database pizzaria_legal;

USE pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT auto_increment primary key,
    categoria VARCHAR(255),
    bordarecheado VARCHAR(255)
);
CREATE TABLE tb_pizza(
	id BIGINT auto_increment primary key,
	nome VARCHAR(255) NOT NULL,
    quantidade int NOT NULL,
    preco DECIMAL NOT NULL,
    categorias_tipo BIGINT NOT NULL, 
    foreign key(categorias_tipo) references tb_categorias(id)
);
INSERT INTO tb_categorias(categoria, bordarecheado)
VALUES ("Salgada", "Catupiry");
INSERT INTO tb_categorias(categoria, bordarecheado)
VALUES ("Doce", "Chocolate");
INSERT INTO tb_categorias(categoria, bordarecheado)
VALUES ("Salgada", "Queijo");
INSERT INTO tb_categorias(categoria, bordarecheado)
VALUES ("Salgada", "Cheddar");
INSERT INTO tb_categorias(categoria, bordarecheado)
VALUES ("Doce", "Sem recheio");
INSERT INTO tb_categorias(categoria, bordarecheado)
VALUES ("Salgada", "Sem recheio");

INSERT INTO tb_pizza(nome, quantidade, preco, categorias_tipo)
VALUES ("Calabresa", 2, 60.00, 1);
INSERT INTO tb_pizza(nome, quantidade, preco, categorias_tipo)
VALUES ("Portuguesa", 4, 120.00, 6);
INSERT INTO tb_pizza(nome, quantidade, preco, categorias_tipo)
VALUES ("Chocolate", 1, 30.00, 2);
INSERT INTO tb_pizza(nome, quantidade, preco, categorias_tipo)
VALUES ("Mussarela", 2, 60.00, 4);
INSERT INTO tb_pizza(nome, quantidade, preco, categorias_tipo)
VALUES ("Atum", 2, 61.00, 6);
INSERT INTO tb_pizza(nome, quantidade, preco, categorias_tipo)
VALUES ("Dois Queijos", 2, 63.50, 3);
INSERT INTO tb_pizza(nome, quantidade, preco, categorias_tipo)
VALUES ("Chocolate Branco", 1, 32.00, 2);
INSERT INTO tb_pizza(nome, quantidade, preco, categorias_tipo)
VALUES ("Banana com Chocolate", 2, 60.00, 5);

SELECT * FROM tb_pizza WHERE preco > 45.00;
SELECT * FROM tb_pizza WHERE preco > 50.00 and preco < 100.00;
SELECT * FROM tb_pizza WHERE nome LIKE "%M%" or "%m%";


SELECT nome, quantidade, preco, tb_categorias.categoria, tb_categorias.bordarecheado
FROM tb_pizza INNER JOIN tb_categorias 
ON tb_pizza.categorias_tipo = tb_categorias.id;

SELECT nome, quantidade, preco, tb_categorias.categoria, tb_categorias.bordarecheado
FROM tb_pizza INNER JOIN tb_categorias 
ON tb_pizza.categorias_tipo = tb_categorias.id WHERE tb_categorias.id = 2 or tb_categorias.id = 5;




