CREATE DATABASE db_mercadodigital;

USE db_mercadodigital;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255),
descrisao varchar(255),
frabricante varchar(255),
garantia int,
preco decimal(6,2) not null,
primary key(id));

INSERT INTO tb_produtos(nome, descrisao, frabricante, garantia, preco) VALUE("TV","Muito bom","LG",12,3000.50);
INSERT INTO tb_produtos(nome, descrisao, frabricante, garantia, preco) VALUE("PC","De qualidade boa","Acer",16,2500.50);
INSERT INTO tb_produtos(nome, descrisao, frabricante, garantia, preco) VALUE("Notebook","Nao quebra","Positivo",14,3600.50);
INSERT INTO tb_produtos(nome, descrisao, frabricante, garantia, preco) VALUE("Forno","Confiavel","Arno",24,3000.50);
INSERT INTO tb_produtos(nome, descrisao, frabricante, garantia, preco) VALUE("Radio","Qualidade impar","Panasonic",6,3000.50);
INSERT INTO tb_produtos(nome, descrisao, frabricante, garantia, preco) VALUE("Celular","Muito rapido","Apple",24,5000.50);
INSERT INTO tb_produtos(nome, descrisao, frabricante, garantia, preco) VALUE("Tablet","Alem do rapido","Asus",18,3000.50);
INSERT INTO tb_produtos(nome, descrisao, frabricante, garantia, preco) VALUE("Xbox","Full HD","Microsoft",24,400.50);

SELECT * FROM tb_produtos WHERE preco > 500.0 ;

select * from tb_produtos where preco < 500.0 ;

update tb_produtos set preco = 190.50 where id = 8;