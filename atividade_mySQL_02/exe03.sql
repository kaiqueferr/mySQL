CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
id bigint auto_increment,
nome varchar(255),
ra varchar(255),
turma varchar(255),
turna_numero int,
nota decimal(6,2) not null,
primary key(id));

INSERT INTO tb_estudantes(nome, ra, turma, turna_numero, nota) VALUE("Pedro","1123","Alpha",1,3.50);
INSERT INTO tb_estudantes(nome, ra, turma, turna_numero, nota) VALUE("Jack","1134","Beta",4,8.50);
INSERT INTO tb_estudantes(nome, ra, turma, turna_numero, nota) VALUE("Ana","1156","Beta",16,9.50);
INSERT INTO tb_estudantes(nome, ra, turma, turna_numero, nota) VALUE("Juh","1178","Alpha",7,3.50);
INSERT INTO tb_estudantes(nome, ra, turma, turna_numero, nota) VALUE("Alice","1189","Gama",12,7.50);
INSERT INTO tb_estudantes(nome, ra, turma, turna_numero, nota) VALUE("Vick","1192","Beta",19,1.50);
INSERT INTO tb_estudantes(nome, ra, turma, turna_numero, nota) VALUE("Bia","1153","Gama",8,3.50);
INSERT INTO tb_estudantes(nome, ra, turma, turna_numero, nota) VALUE("Bill","1184","Alpha",3,7.50);

SELECT * FROM tb_estudantes WHERE nota > 7.0 ;

select * from tb_estudantes where nota < 7.0 ;

update tb_estudantes set nota = 10.0 where id = 6;