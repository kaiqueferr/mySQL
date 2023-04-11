CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE  tb_classes(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
elemento varchar(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE  tb_personagens(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
vida bigint,
dano bigint,
magia varchar(255),
trasporte varchar(255),
classes_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(nome, elemento) VALUES ("Tentania", "Ar");
INSERT INTO tb_classes(nome, elemento) VALUES ("Ciclone", "Ar");
INSERT INTO tb_classes(nome, elemento) VALUES ("Terremoto", "Terra");
INSERT INTO tb_classes(nome, elemento) VALUES ("Tisunami", "Agua");
INSERT INTO tb_classes(nome, elemento) VALUES ("Trovao", "Fogo");

INSERT INTO tb_personagens( nome, vida, dano, magia, trasporte, classes_id) VALUES ("Pedro",3200,1300, "voar", "pé",1);
INSERT INTO tb_personagens( nome, vida, dano, magia, trasporte, classes_id) VALUES ("Chico",4000,1000, "correr", "pé",3);
INSERT INTO tb_personagens( nome, vida, dano, magia, trasporte, classes_id) VALUES ("Pitu",3000,2500, "forca", "cavalo",2);
INSERT INTO tb_personagens( nome, vida, dano, magia, trasporte, classes_id) VALUES ("Corvete",5000,500, "voar", "pé",1);
INSERT INTO tb_personagens( nome, vida, dano, magia, trasporte, classes_id) VALUES ("Xuxa",3500,1300, "invisivel", "moto",4);
INSERT INTO tb_personagens( nome, vida, dano, magia, trasporte, classes_id) VALUES ("Natali",4000,1500, "mergulhar", "cavalo",2);
INSERT INTO tb_personagens( nome, vida, dano, magia, trasporte, classes_id) VALUES ("Lupita",30,1500, "dar vida", "carro",3);
INSERT INTO tb_personagens( nome, vida, dano, magia, trasporte, classes_id) VALUES ("Neno",3100,2500, "telepatia", "pé",5);

SELECT * FROM tb_personagens WHERE dano > 2000;

SELECT * FROM tb_personagens WHERE dano BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT tb_personagens.nome, vida, dano, magia, trasporte, tb_classes.nome AS classe, elemento
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classes_id;

SELECT tb_personagens.nome, vida, dano, magia, trasporte, tb_classes.nome AS classe, elemento
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classes_id
WHERE classes_id = 2;














