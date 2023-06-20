CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;	

CREATE TABLE tb_categorias(
id bigint auto_increment,
retira_delivery_balcao varchar(255) not null,
pagamento varchar(255) not null,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias( retira_delivery_balcao, pagamento)
values("Delivery", "pix"),
("Balcao", "credito"),
("Delivery", "debito"),
("Balcao", "VR"),
("Delivery", "pix");

SELECT * FROM tb_categorias;


USE db_pizzaria_legal;

CREATE TABLE tb_pizzas (
id bigint auto_increment,
PRIMARY KEY (id),
nome_pizza varchar(255) not null,
preco decimal(5,2),
tamanho_em_pedaco int,
nome_cliente varchar(255) not null,
classe_id bigint,
FOREIGN KEY (classe_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas(nome_pizza, preco,tamanho_em_pedaco, nome_cliente, classe_id)
values("Portuguesa", 45.90, 8,"Sabrina",1),
("Mussarela", 35.90, 8,"Manuel",2),
("Calabresa", 35.90, 8,"Maria",3),
("Toscana", 55.90, 8,"Carlos",4),
("Frango 3", 65.90, 8,"Francisco",5),
("Especial 2", 100.90, 8,"Larissa",1),
("Rucula, com parma e mel", 100.90, 8,"Sergio",2),
("Chocolate trufado", 95.90, 8,"Amanda",3);


SELECT * FROM tb_pizzas;
SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "P%";

SELECT tb_pizzas.*, tb_categorias.retira_delivery_balcao FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.classe_id = tb_categorias.id;

SELECT tb_pizzas.*, tb_categorias.retira_delivery_balcao, tb_categorias.pagamento FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.classe_id = tb_categorias.id
WHERE tb_categorias.retira_delivery_balcao = 'Delivery';


