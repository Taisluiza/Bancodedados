CREATE DATABASE escola_gen;

USE escola_gen;

CREATE TABLE escola_alunos(
id bigint auto_increment,
nome varchar(50) not null,
curso text,
nota_1 float(3,1),
nota_2 float(3,1),
media float(3,1),
PRIMARY KEY (id)
);

INSERT INTO escola_alunos(nome, curso, nota_1, nota_2, media)
values("Ana Ferreia", "Dev web", 5.0, 8.0, 6.5),
("Beatriz Soares", "Dev web", 6.0, 9.0, 7.5),
("Carlos Pereira", "Dev web", 7.0, 10.0, 8.5),
("Daniel Augusto", "Dev web", 8.0, 5.0, 6.5),
("Eduardo Carvalho", "Dev web", 9.0, 6.0, 7.5),
("Ferdinando Assis", "Dev web", 10.0, 7.0, 8.5),
("Gabriella Guerra", "Dev web", 4.0, 8.0, 6.0),
("Helio Souza", "Dev web", 5.0, 5.0, 5.0);

SELECT * FROM escola_alunos;
SELECT * FROM escola_alunos WHERE media >= 7.0;
SELECT media,nome FROM escola_alunos WHERE media <= 7.0;
UPDATE escola_alunos SET nota_1 = 9 WHERE id = 8;
UPDATE escola_alunos SET media = 7.0 WHERE id = 8;
SELECT * FROM escola_alunos;