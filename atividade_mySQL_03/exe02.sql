CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
acompanha varchar(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
calorias bigint,
preco decimal(6, 2),
borda varchar(255),
categorias_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome, acompanha) VALUES ("brasileira", "Cerveja");
INSERT INTO tb_categorias(nome, acompanha) VALUES ("diNapole", "vinho tinto");
INSERT INTO tb_categorias(nome, acompanha) VALUES ("Ceciliana", "vinho branco");
INSERT INTO tb_categorias(nome, acompanha) VALUES ("Americana", "chopp");
INSERT INTO tb_categorias(nome, acompanha) VALUES ("diMilano", "vinho rose");



INSERT INTO tb_pizzas(nome, calorias, preco, borda, categorias_id) VALUES ("Peperoni",220, 45.50 ,"catupyri",2);
INSERT INTO tb_pizzas(nome, calorias, preco, borda, categorias_id) VALUES ("Portugesa",220,45.50, "massa",1);
INSERT INTO tb_pizzas(nome, calorias, preco, borda, categorias_id) VALUES ("Gorgonzola",230,55.50, "tomate",3);
INSERT INTO tb_pizzas(nome, calorias, preco, borda, categorias_id) VALUES ("Paulista",620,36.50, "catupyri",1);
INSERT INTO tb_pizzas(nome, calorias, preco, borda, categorias_id) VALUES ("Havaiana",320,33.50, "massa",4);
INSERT INTO tb_pizzas(nome, calorias, preco, borda, categorias_id) VALUES ("Musarela",620,45.50, "massa",5);
INSERT INTO tb_pizzas(nome, calorias, preco, borda, categorias_id) VALUES ("4queijo",520,55.50, "musarela",1);
INSERT INTO tb_pizzas(nome, calorias, preco, borda, categorias_id) VALUES ("Frango",220,45.50, "catupyri",1);
INSERT INTO tb_pizzas(nome, calorias, preco, borda, categorias_id) VALUES ("Napolitana",220,45.50, "massa",2);


SELECT * FROM tb_pizzas WHERE preco > 45.0;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.0 AND 100.0;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT tb_pizzas.nome, calorias, preco, borda, tb_categorias.nome AS categotia, acompanha
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categorias_id;

SELECT tb_pizzas.nome, calorias, preco, borda, tb_categorias.nome AS categotia, acompanha
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categorias_id
WHERE categorias_id = 1;