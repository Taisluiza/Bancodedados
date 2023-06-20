CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;	

CREATE TABLE tb_classes(
id bigint auto_increment,
habilidade varchar(255) not null,
tipo_de_poder varchar(255) not null,
PRIMARY KEY (id)
);

INSERT INTO tb_classes( habilidade, tipo_de_poder)
values("Mago", "Conjurador de magia");
INSERT INTO tb_classes( habilidade, tipo_de_poder)
values("Fenticeiro", "Fonte de magia");
INSERT INTO tb_classes( habilidade, tipo_de_poder)
values("Bruxo", "Receptor de magia");
INSERT INTO tb_classes( habilidade, tipo_de_poder)
values("Druida", "Metamorfo");
INSERT INTO tb_classes( habilidade,tipo_de_poder)
values("Arqueiro", "Caçador");

SELECT * FROM tb_classes;


USE db_generation_game_online;

CREATE TABLE tb_personagem(
id bigint auto_increment,
PRIMARY KEY (id),
nome_personagem varchar(255) not null,
poder_de_ataque int,
poder_de_defesa int,
cenario varchar(255) not null,
classe_id bigint,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagem(nome_personagem,poder_de_ataque, poder_de_defesa, cenario, classe_id)
values("Sonic", 5000, 6000,"Castelo",1);
INSERT INTO tb_personagem(nome_personagem,poder_de_ataque, poder_de_defesa, cenario,classe_id)
values("Lea", 5000, 5000,"Castelo", 2);
INSERT INTO tb_personagem(nome_personagem,poder_de_ataque, poder_de_defesa, cenario, classe_id)
values("Astrud", 4000, 4000, "Cabana na floresta", 3);
INSERT INTO tb_personagem(nome_personagem,poder_de_ataque, poder_de_defesa, cenario,classe_id)
values("Haohmaru", 4000, 3000,"Floresta", 4);
INSERT INTO tb_personagem(nome_personagem,poder_de_ataque, poder_de_defesa, cenario,classe_id)
values("Nakorur",2000 , 2000,"Floresta", 5);
INSERT INTO tb_personagem(nome_personagem,poder_de_ataque, poder_de_defesa, cenario,classe_id)
values("Prince", 2000, 1000,"Montanhas",1);
INSERT INTO tb_personagem(nome_personagem,poder_de_ataque, poder_de_defesa, cenario, classe_id)
values("Julic", 1000, 500,"Cabana na Floresta", 2);
INSERT INTO tb_personagem(nome_personagem,poder_de_ataque, poder_de_defesa, cenario,classe_id)
values("Carius", 1000 , 500,"Montanhas",3);

SELECT * FROM tb_personagem;
SELECT * FROM tb_personagem WHERE poder_de_ataque > 2000;
SELECT * FROM tb_personagem WHERE poder_de_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagem WHERE nome_personagem LIKE "C%";

SELECT tb_personagem.*, tb_classes.habilidade AS classe FROM tb_personagem
INNER JOIN tb_classes ON tb_personagem.classe_id = tb_classes.id;

SELECT tb_personagem.*, tb_classes.habilidade AS classe FROM tb_personagem
INNER JOIN tb_classes ON tb_personagem.classe_id = tb_classes.id
WHERE tb_classes.habilidade = 'Druida';