show schemas; -- Consultar todos os bancos de dados
create database if not exists proway; -- Criar o banco de dados 'proway'
show schemas; -- Consultar todos os bd
use proway; -- Definir qual o bd que será utilizado
create table if not exists alunos(
	codigo INT, -- coluna do tipo inteiro
	nome VARCHAR(40) -- coluna do tipo de texto com tamanho máximo de 40 caracteres
);
show tables; -- Consultar todas as tabelas do bd selecionado
select codigo, nome from alunos; -- Consultar os registros da tabela de alunos

-- Apagar os registros com nome de Bernardo e Cintia
delete from alunos where nome = "Bernardo";
delete from alunos where nome = "Cintia";

 -- Criar registro na tabela de alunos
insert into alunos (codigo, nome) value (1234, "Bernardo");

-- Consultar os registros da tabela de alunos
select codigo, nome from alunos;

insert into alunos (codigo, nome) value (1235, "Cintia");


-- Apresentar a estrutura da tabela de alunos
describe alunos;
-- Adicionar uma coluna telefone na tabela de alunos
alter table alunos add column telefone VARCHAR(13);
-- Consultando os registros da tabela de alunos
select codigo, nome, telefone from alunos;
-- Atualizar o telefone do Bernardo
update alunos set telefone = "47 99123-2039" where codigo = 1234;
-- Atualizar o telefone da Cintia
update alunos set telefone = "47 99827-3918" where codigo = 1235;

alter table alunos add column endereco VARCHAR(100);

update alunos set endereco = "Rua Maria da Silva" where codigo = 1234;
update alunos set endereco = "Rua das flores" where codigo = 1235;
select codigo, nome, telefone, endereco from alunos;

-- Apagar coluna de endereço
alter table alunos drop column endereco;
describe alunos;





CREATE TABLE IF NOT exists lanches(
    codigo INT, 
    nome VARCHAR(30),
    quantidade_consumo INT
);
INSERT INTO lanches (codigo, nome, quantidade_consumo) VALUE (1, "Pão de queijo", 1);
INSERT INTO lanches (codigo, nome, quantidade_consumo) VALUE (2, "Fatia de pão", 4);
INSERT INTO lanches (codigo, nome, quantidade_consumo) VALUE (3, "Patê de linguiça Blumenau", 8);
INSERT INTO lanches (codigo, nome, quantidade_consumo) VALUE (4, "Uva", 20);
INSERT INTO lanches (codigo, nome, quantidade_consumo) VALUE (5, "Bolo de chocolate", 2);
INSERT INTO lanches (codigo, nome, quantidade_consumo) VALUE (6, "Suco", 1);

ALTER TABLE lanches ADD COLUMN preco_unitario DOUBLE;

UPDATE lanches SET preco_unitario = 2.5 WHERE codigo = 1;
UPDATE lanches SET preco_unitario = 1 WHERE codigo = 2;
UPDATE lanches SET preco_unitario = 2.5 WHERE codigo = 3;
UPDATE lanches SET preco_unitario = 0.25 WHERE codigo = 4;
UPDATE lanches SET preco_unitario = 5 WHERE codigo = 5;
UPDATE lanches SET preco_unitario = 2 WHERE codigo = 6;

SELECT * FROM lanches;




use proway;
select codigo, nome, quantidade_consumo, preco_unitario from lanches;

-- Consultar o nome, quantidade, preço unitário e total por lanche
select 
	nome, 
	quantidade_consumo, 
	preco_unitario as "Preço unitário", 
	quantidade_consumo * preco_unitario as "Total"
from lanches;

-- Consultar o nome e quantidade dos lanches com quantidade maior que 5
select 
	nome,
	quantidade_consumo
from lanches
where quantidade_consumo > 5;

-- Consultar o nome ordenando de A-Z os nomes
select 
	nome
from lanches
order by nome asc;

-- Consultar o nome ordenando de Z-A os nomes
select 
	nome
from lanches
order by nome desc;



