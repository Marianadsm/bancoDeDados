CREATE DATABASE cidade_dos_vegetais;

USE cidade_dos_vegetais;

CREATE TABLE tb_categorias(
id bigint auto_increment primary key,
descricao varchar(50),
organico boolean
);

CREATE TABLE tb_produtos(
id bigint auto_increment primary key,
tipo varchar (50),
tamanho varchar (50),
preco_kilo decimal (6,2),
quantidade integer,
categoria_id bigint,

FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (descricao, organico) VALUES ("legume", true); -- 1
INSERT INTO tb_categorias (descricao, organico) VALUES ("legume", false); -- 2
INSERT INTO tb_categorias (descricao, organico) VALUES ("fruta", true); -- 3
INSERT INTO tb_categorias (descricao, organico) VALUES ("fruta", false); -- 4
INSERT INTO tb_categorias (descricao, organico) VALUES ("verdura", true); -- 5
INSERT INTO tb_categorias (descricao, organico) VALUES ("verdura", false); -- 6

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (tipo,tamanho,preco_kilo,quantidade,categoria_id) VALUES ("maca","pequena",6.70,4,4);
INSERT INTO tb_produtos (tipo,tamanho,preco_kilo,quantidade,categoria_id) VALUES ("abobora", "grande", 3.0, 2,2);
INSERT INTO tb_produtos (tipo,tamanho,preco_kilo,quantidade,categoria_id) VALUES ("maca","grande",16.00,2,3);
INSERT INTO tb_produtos (tipo,tamanho,preco_kilo,quantidade,categoria_id) VALUES ("couve", "grande", 2.00,2,5);
INSERT INTO tb_produtos (tipo,tamanho,preco_kilo,quantidade,categoria_id) VALUES("banana", "pequena",5.00,2,4);
INSERT INTO tb_produtos (tipo,tamanho,preco_kilo,quantidade,categoria_id) VALUES ("beringela", "grande", 10.00, 5,1);
INSERT INTO tb_produtos (tipo,tamanho,preco_kilo,quantidade,categoria_id) VALUES("beringela", "grande",3.00,3,2);
INSERT INTO tb_produtos (tipo,tamanho,preco_kilo,quantidade,categoria_id) VALUES ("chuchu", "pequeno",10.00,2,5);

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos WHERE preco_kilo > 50.00;SELECT * FROM tb_produtos WHERE preco_kilo > 50.00;
SELECT * FROM tb_produtos WHERE preco_kilo BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE tipo LIKE "%c%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias WHERE descricao="legume";








