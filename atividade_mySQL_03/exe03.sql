CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
restrita varchar(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
targa varchar(255),
preco decimal(6, 2),
marca varchar(255),
categorias_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome, restrita) VALUES ("Champoo", "Nao");
INSERT INTO tb_categorias(nome, restrita) VALUES ("Beleza", "Nao");
INSERT INTO tb_categorias(nome, restrita) VALUES ("Remedio", "Sim");
INSERT INTO tb_categorias(nome, restrita) VALUES ("Agua", "Nao");
INSERT INTO tb_categorias(nome, restrita) VALUES ("Alimento", "Nao");




INSERT INTO tb_produtos(nome, targa, preco, marca, categorias_id) VALUES ("Dipitona","Não ha", 1.50 ,"Teuto",3);
INSERT INTO tb_produtos(nome, targa, preco, marca, categorias_id) VALUES ("J baby","Não ha", 15.50 ,"J e J",1);
INSERT INTO tb_produtos(nome, targa, preco, marca, categorias_id) VALUES ("Nimesulida","Vermelha", 1.50 ,"Teuto",3);
INSERT INTO tb_produtos(nome, targa, preco, marca, categorias_id) VALUES ("Rivotril","Preta", 60.50 ,"Piopas",3);
INSERT INTO tb_produtos(nome, targa, preco, marca, categorias_id) VALUES ("Demaquilante","Não ha", 5.50 ,"Avon",2);
INSERT INTO tb_produtos(nome, targa, preco, marca, categorias_id) VALUES ("Supeimrto","Não ha", 50.50 ,"topWhey",5);
INSERT INTO tb_produtos(nome, targa, preco, marca, categorias_id) VALUES ("PrurezaVital","Não ha", 1.50 ,"Nestle",4);
INSERT INTO tb_produtos(nome, targa, preco, marca, categorias_id) VALUES ("Leite em po","Não ha", 45.50 ,"Nestle",5);


SELECT * FROM tb_produtos WHERE preco > 40.0;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.0 AND 60.0;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT tb_produtos.nome, targa, preco, marca, tb_categorias.nome AS categotia, restrita
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categorias_id;

SELECT tb_produtos.nome, targa, preco, marca, tb_categorias.nome AS categotia, restrita
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categorias_id
WHERE categorias_id = 3;
