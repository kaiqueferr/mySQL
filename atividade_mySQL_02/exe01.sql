CREATE DATABASE db_recursoshumanos;

USE db_recursoshumanos;

CREATE TABLE tb_pessoas(
id bigint auto_increment,
nome varchar(255),
pis varchar(255),
cpf varchar(255),
cnh char,
salario decimal(6,2) not null,
primary key(id));

INSERT INTO tb_pessoas(nome, pis, cpf, cnh, salario) VALUE("Pedro","1234","111-7",'B',3000.50);
INSERT INTO tb_pessoas(nome, pis, cpf, cnh, salario) VALUE("Maria","4567","555-8",'A',3400.50);
INSERT INTO tb_pessoas(nome, pis, cpf, cnh, salario) VALUE("Joao","9810","999-0",'C',2000.50);
INSERT INTO tb_pessoas(nome, pis, cpf, cnh, salario) VALUE("Ana","1112","222-5",'B',3700.50);
INSERT INTO tb_pessoas(nome, pis, cpf, cnh, salario) VALUE("Sofia","1314","333-6",'D',1000.50);

SELECT * FROM tb_pessoas WHERE salario > 2000.0 ;

select * from tb_pessoas where salario < 2000.0 ;

update tb_pessoas set salario = 1900.50 where id = 5;
