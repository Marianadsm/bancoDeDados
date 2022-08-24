CREATE DATABASE db_RH;

USE db_RH;

/*crie 5 atributos relevantes*/
CREATE TABLE tb_colaboradores ( 
id bigint auto_increment primary key,
nome varchar (255),
idade integer,
funcao varchar(255),
salario integer
);

INSERT INTO tb_colaboradores (nome, idade, funcao, salario) VALUES ("João Santos", 18, "estagiario",1000);

SELECT * FROM tb_colaboradores; 

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 1700 WHERE id =  4; 