CREATE DATABASE db_escola_generation; /*para criar meu banco de dados*/
 
USE db_escola_generation; /*para selecionar meu banco de dados q quero usar*/

CREATE TABLE tb_alunes( /*para criar tabela*/
id bigint auto_increment primary key, /*primeira coluna*/
nome varchar (255), /*varchar é o STRING no mysql, 255 é o numero máximo de caracteres. eu q escolho esse num*/
data_nascimento date,
turma integer ,
nota decimal (4,2) /*ex:  vou aceitar 4 caracteres no TOTAL, com 2 numeros apenas dps da vírgula*/
);

/*INSERT INTO + nome tabela para inserir na tabela:*/ /*id é o my SQL que gera*/
/*VALUES: os valores q vao pra tabela, em ordem*/
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota) VALUES("Jessica Lopes","1997-09-17",57, 5);

/*no insert into, pra adicionar outro alune, por ex, eu posso apenas substituir no mesmo insert e rodar, ou posso copiar e colar embaixo, mudar os dados e rodar esse outro*/

/*no "select from" ele vai apenas me MOSTRAR os dados da tabela (eu tenho que selecionar a linha do select pra rodar a que eu quero).*/
SELECT * FROM tb_alunes; /*Seleciona todos os dados da tabela de alunes*/

SELECT * FROM tb_alunes WHERE nota > 7; /*Seleciona os dados de alunes com nota >7*/ 

SELECT * FROM tb_alunes WHERE nota < 7 LIMIT 100; /*Seleciona os dados de alunes com nota <7 */
/*esse exemplo limit 100 ele limita pra 100 alunos só no max pra rodar*/
/*ou se eu quiser só um dado, tipo nome*/
SELECT nome FROM tb_alunes WHERE nota < 7;
/*ou se eu quiser mais de um dado*/
SELECT nome FROM tb_alunes WHERE nota > 7 AND id=1; /*and é o mesmo de &&, or é o mesmo de ||*/

UPDATE tb_alunes SET nota = 7 WHERE id = 3; /*set:mudar. alualize na tabela alunes, a nota 7 ONDE o id for 3. se eu não colocar esse WHERE pra especificar onde, vai mudar de todos.
/*depois que executa nao tem control z. tem que ter o backup  */
/* uso id pq ele é unico e intransferível, nome pode ter vários com o mesmo pq pode ter mt aluno c mesmo nome*/










