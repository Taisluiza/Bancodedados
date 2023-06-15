CREATE DATABASE ecommerce_gen;

USE ecommerce_gen;

CREATE TABLE ecommerce_produtos(
id bigint auto_increment,
nome varchar(100) not null,
quantidade int,
preco decimal(5,2) not null,
entrega_feita varchar(30) not null,
avaliacao varchar(5),
PRIMARY KEY (id)
);

SELECT * FROM ecommerce_produtos;

INSERT INTO ecommerce_produtos(nome, quantidade, preco, entrega_feita, avaliacao)
values("Blusa feminica regata", 500, 50.00, " correios", "5"),
("Blusa masculina regata",500, 50.00, "correios", "4"),
("Calça jeans feminina reta", 500, 250.00, "correios","4"),
("Calça jeans masculina reta",500, 300.00, "correios","5"),
("Jardineira jeans longa", 500, 450.00, "correios","5"),
("Jaqueta jeans", 500, 500.00, "correios","5"),
("Conjunto de moletom(blusa e calça)", 500, 600.00, "correios","3"),
("Conjunto de verão(blusa, kimono,shorts)",500, 650.00,"correios","3");


SELECT * FROM ecommerce_produtos;
SELECT * FROM ecommerce_produtos WHERE preco >= 500.00;
SELECT * FROM ecommerce_produtos WHERE preco <= 500.00;
UPDATE ecommerce_produtos SET preco = 350.00 WHERE id = 6;
SELECT * FROM ecommerce_produtos;