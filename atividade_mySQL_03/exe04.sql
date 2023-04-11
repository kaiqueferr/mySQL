CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
origem varchar(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
Industrializado boolean,
preco decimal(6, 2),
distribuidora varchar(255),
categorias_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome, origem) VALUES ("Carne", "Animal");
INSERT INTO tb_categorias(nome, origem) VALUES ("Processados", "Animal");
INSERT INTO tb_categorias(nome, origem) VALUES ("Tenpero", "Vegetal");
INSERT INTO tb_categorias(nome, origem) VALUES ("Acompanhameto", "Multiplas");
INSERT INTO tb_categorias(nome, origem) VALUES ("Ultilidades", "Outros");

INSERT INTO tb_produtos(nome, Industrializado, preco, distribuidora, categorias_id) 
VALUES ("Picanha",false, 70.50 ,"Friboi",1);
INSERT INTO tb_produtos(nome, Industrializado, preco, distribuidora, categorias_id) 
VALUES ("Frango",false, 30.50 ,"Sadia",1);
INSERT INTO tb_produtos(nome, Industrializado, preco, distribuidora, categorias_id) 
VALUES ("Salsicha",true, 10.50 ,"Perdigao",2);
INSERT INTO tb_produtos(nome, Industrializado, preco, distribuidora, categorias_id) 
VALUES ("Cuminho",false, 1.50 ,"TiaTtempero",3);
INSERT INTO tb_produtos(nome, Industrializado, preco, distribuidora, categorias_id) 
VALUES ("Carvao",true, 10.50 ,"Uniao",5);
INSERT INTO tb_produtos(nome, Industrializado, preco, distribuidora, categorias_id) 
VALUES ("Pienta",true, 1.50 ,"Kinor",3);
INSERT INTO tb_produtos(nome, Industrializado, preco, distribuidora, categorias_id) 
VALUES ("Farinha",true, 5.50 ,"Yoki",4);
INSERT INTO tb_produtos(nome, Industrializado, preco, distribuidora, categorias_id) 
VALUES ("Miojo",true, 2.50 ,"Nissin",4);

SELECT * FROM tb_produtos WHERE preco > 50.0;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.0 AND 150.0;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT tb_produtos.nome, Industrializado, preco, distribuidora, tb_categorias.nome AS categotia, origem
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categorias_id;

SELECT tb_produtos.nome, Industrializado, preco, distribuidora, tb_categorias.nome AS categotia, origem
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categorias_id
WHERE categorias_id = 1;