CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint auto_increment primary key,
nome varchar(50),
categoria varchar(50),
pet varchar(50),
valor decimal (8,2)
); 

INSERT INTO tb_produtos(nome, categoria, pet, valor) VALUES ("bebedouro", "utensilios", "gato ou cachorro", 100.00);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE valor < 500.00;
SELECT * FROM tb_produtos WHERE valor > 500.00;

UPDATE tb_produtos SET valor = 30.00 WHERE id = 3;
SELECT * FROM tb_produtos;

