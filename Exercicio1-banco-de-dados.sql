CREATE DATABASE rh_gen;

USE rh_gen;

CREATE TABLE rh_funcionarios(
id bigint auto_increment,
nome varchar(30) not null,
nascimento date not null,
salario double,
cargo varchar(30) not null,
nacionalidade varchar(30),
PRIMARY KEY (id)
);

SELECT * FROM rh_funcionarios;

INSERT INTO rh_funcionarios(nome, nascimento, salario, cargo, nacionalidade)
values("Valeria Silva", '1989-08-20', '1500.00', "recepcionista", "brasileira");
INSERT INTO rh_funcionarios(nome, nascimento, salario, cargo, nacionalidade)
values("Carlos Batulato", '1959-01-15', '3500.00', "Desenvolvedor Junior", "americano");
INSERT INTO rh_funcionarios(nome, nascimento, salario, cargo, nacionalidade)
values("Alejadro Madujo", '2000-05-01', '2500.00', "Assistente de programação", "mexicano");
INSERT INTO rh_funcionarios(nome, nascimento, salario, cargo, nacionalidade)
values("Paola Bracho", '1992-12-10', '4500.00', "Desenvolvedora Sênio", "mexicana");
INSERT INTO rh_funcionarios(nome, nascimento, salario, cargo, nacionalidade)
values("Maria Ferreira", '1990-04-10', '5500.00', "Desenvolvedora Pleno", "brasileira");

SELECT * FROM rh_funcionarios;
SELECT * FROM rh_funcionarios WHERE salario >= 2000.00;
SELECT * FROM rh_funcionarios WHERE salario <= 2000.00;
UPDATE rh_funcionarios SET salario = 6500.00 WHERE id = 5;
SELECT * FROM rh_funcionarios;
