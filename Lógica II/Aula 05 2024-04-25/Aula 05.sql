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
-- drop table lanches;


use proway; -- Apontar qual o banco de dados que vamos trabalhar
describe lanches;
select codigo, nome, quantidade_consumo, preco_unitario from lanches;

-- Consultar a quantidade máxima de lanches
select max(quantidade_consumo) from lanches;

-- Consultar a quantidade mínima de lanches
select min(quantidade_consumo) from lanches;

-- Consultar a soma das quantidade
select sum(quantidade_consumo) from lanches;

-- Consultar a média das quantidades
select avg(quantidade_consumo) from lanches;

-- Consultar a quantidade de registros
select count(codigo) from lanches;


-- Apagar a tabela de alunos caso exists
drop table if exists alunos;
create table alunos(
	codigo int auto_increment, -- auto_increment preencher o campo código automaticamente
	nome varchar(40) not null, -- not null obriga o usuário a preencher(campo requerido)
	sobrenome varchar(100) not null,
	data_nascimento DATE, -- date é utilizado para armazenar data
	nota1 DOUBLE,
	nota2 DOUBLE,
	nota3 DOUBLE,
	percentual_frequencia DOUBLE,
	primary key(codigo) -- primary key: chave primária
);
describe alunos;
insert into alunos (nome, sobrenome, data_nascimento, nota1, nota2, nota3, percentual_frequencia)
VALUE ("Bernardo", "da Silva", "2006-01-03", 1.00, 9.09, 9.99, 100);
insert into alunos (nome, sobrenome, data_nascimento, nota1, nota2, nota3, percentual_frequencia) 
VALUE ("Renan", "Ploma da Silva", "1997-09-21", 8.0, 4.3, 7.5, 25);
insert into alunos (nome, sobrenome, data_nascimento, nota1, nota2, nota3, percentual_frequencia)
VALUE ("Guilherme", "Silva Plamo", "2007-02-01", 10, 10, 10, 15.20);
insert into alunos (nome, sobrenome, data_nascimento, nota1, nota2, nota3, percentual_frequencia) 
VALUE ("Cintia", "Pluma Silva Plemo", "1998-03-04", 5.45, 8.00, 7.55, 75);
insert into alunos (nome, sobrenome, data_nascimento, nota1, nota2, nota3, percentual_frequencia) 
VALUE ("Genesis", "Plima", "1999-11-16", 8, 8, 7, 80);
select 
	codigo, nome, sobrenome, data_nascimento, nota1, nota2, nota3, percentual_frequencia
	from alunos;

-- Consultar nome e soma das notas de cada aluno
select nome, nota1 + nota2 + nota3
from alunos;

-- Consultar nome e média das notas de cada aluno
select nome, (nota1 + nota2 + nota3) / 3 as 'Média'
from alunos;

-- Consultar o nome completo dos alunos
select CONCAT(nome, " ", sobrenome) as 'Nome Completo'
from alunos;

-- Consultar o momento de agora
select now();

-- Consultar o ano atual
select year(now());

-- Consultar o mês atual
select month(now());

-- Consultar o dia atual
select day(now());

-- Consultar a hora atual
select hour(now());

-- Consultar o minuto atual
select minute(now());

-- Consultar o segundo atual
select second(now());

-- Consultar da seguinte forma "Blumenau, 25 de 4 de 2024."
select concat("Blumenau, ", day(now()), " de ", monthname(now()), " de ", year(now()), ".");

-- Consultar o nome e a idade dos alunos
select nome, year(now()) - year(data_nascimento)
from alunos;

-- Consultar o nome, frequencia e status dos alunos
select
	nome,
	percentual_frequencia,
	-- if(condicao, caso positivo, senao)
	if(percentual_frequencia >= 75, "aprovado",	"reprovado por frequencia") as 'Status'
from
	alunos;

-- Consultar o nome, média, frequencia e status
select 
	nome,
	FORMAT((nota1 + nota2 + nota3) / 3, 2, 2) as 'Média',
	CONCAT(percentual_frequencia, " %") as 'Percentual Frequencia',
	if(percentual_frequencia < 75, 
		"reprovado por frequencia", 
		if(
			(nota1 + nota2 + nota3) / 3 < 7,
			"reprovado por média",
			"aprovado"
		)
	) as 'Status'
from alunos;

-- Alunos que nasceram nos anos 2000
select 
	nome,
	year(data_nascimento)
from alunos
where year(data_nascimento) >= 2000;

-- Consultar código, nome e média dos alunos com média entre 5.00 e 6.99
select
	codigo,
	nome,
	(nota1 + nota2 + nota3) / 3 as "média"
from alunos
where (nota1 + nota2 + nota3) / 3 >= 5.00 and (nota1 + nota2 + nota3) / 3 <= 6.99;

-- Consultar os alunos que não tem o sobrenome "da Silva";
select sobrenome from alunos where sobrenome <> "da Silva";


-- Consultar os alunos que o sobrenome começa com "Silva"
select nome, sobrenome from alunos where sobrenome LIKE "Silva%";

-- Consultar os alunos que o sobrenome termina com "Silva";
select nome, sobrenome from alunos where sobrenome like "%Silva";

-- Consultar os alunos que o sobrenome contém "Silva";
select nome, sobrenome from alunos where sobrenome like "%Silva%";

-- Consultar a quantidade de alunos que o sobrenome termina com "Silva"
select count(codigo) from alunos where sobrenome like "%Silva";

-- Consultar os alunos por ordem de nascimento
select nome, data_nascimento from alunos order by data_nascimento asc;

-- Consultar o nome e idade por ordem decrescente da idade
select
	nome,
	year(now()) - year(data_nascimento)
from alunos
order by year(now()) - year(data_nascimento) desc;
