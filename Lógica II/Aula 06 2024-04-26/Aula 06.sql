-- Apagar o banco de dados de loja
drop database if exists LojaProWay;
create database LojaProWay;
use LojaProWay;

create table cores(
	id int auto_increment,
	nome varchar(60) not null,
	primary key (id)
);
insert into cores (nome) values
("Cinza"),
("Vermelho"),
("Azul"),
("Branco"),
("Preto");
select id, nome from cores;

create table clientes(
	id int auto_increment,
	nome varchar(40) not null,
	cpf varchar(14) not null,
	primary key(id)
);
insert into clientes (nome, cpf) values
("Bárbara Francisca Sabrina Mendes", "670.034.030-64"),
("Ryan Vicente Theo Rezende", "672.662.311-91"),
("Marina Antonella Bernardes", "428.961.843-09"),
("Severino Vinicius Emanuel Oliveira", "690.558.028-75"),
("Roberto Gabriel Cauê Pinto", "986.080.733-74");
select id, nome, cpf from clientes;

create table marcas(
	id int auto_increment,
	nome varchar(30) not null,
	primary key(id)
);
insert into marcas (nome) values
("Volkswagen"),
("Volvo"),
("Fiat"),
("Hyundai"),
("Audi"),
("BMW"),
("Peugeout"),
("Ford");
select id, nome from marcas;

create table linhas(
	id int auto_increment,
	nome varchar(30) not null,
	primary key(id)
);
insert into linhas (nome) values
("Sedan"),
("Hatch"),
("SUV"),
("Sport"),
("Pickup"),
("Wagon");
select id, nome from linhas;

create table carros(
	id int auto_increment,
	id_marca int not null,
	modelo varchar(100),
	-- Chave estrangeira
	-- Relacionamento entre a coluna id_marca com a coluna id da tabela marcas
	foreign key(id_marca) references marcas(id), 
	
	primary key(id) -- chave primária
);

insert into carros (id_marca, modelo) values
(1, "Polo"),
(2, "XC40"),
(2, "XC60"),
(1, "Fusca"),
(3, "Palio"),
(3, "Uno"),
(1, "Gol"),
(1, "Golf"),
(4, "HB20"),
(4, "Creta"),
(4, "i30"),
(5, "R8"),
(5, "Q6"),
(5, "RS6"),
(6, "320i"),
(6, "X6"),
(6, "M3"),
(7, "208"),
(7, "3008"),
(8, "Mustang"),
(8, "Maverick"),
(8, "Ranger");

select id, nome from marcas;
select id, id_marca, modelo from carros;

create table versoes(
	id int auto_increment, -- PK
	id_carro int not null, -- FK carros
	id_linha int not null, -- FK linhas
	ano int not null,
	preco double not null,
	-- foreign key (fk) references tabelaPai(pk)
	foreign key(id_carro) references carros(id),
	foreign key(id_linha) references linhas(id),
	
	primary key(id)
);
select id, modelo from carros;
select id, nome from linhas;

-- id		id_carro		id_linha		ano		preco
-- 9000		1000 - Polo		4100 - Sedan	2022	95970,00
-- 9001		1000 - Polo		4101 - Hatch	2023	105399,99
insert into versoes (id_carro, id_linha, ano, preco) values
(1, 1, 2022, 95970.00);
insert into versoes (id_carro, id_linha, ano, preco) values
(
	(select id from carros where modelo = "Polo"),
	(select id from linhas where nome = "Hatch"),
	2023, 
	105399.99
);


select linhas.id, linhas.nome, nome from linhas;
select * from carros;

-- Consultar a marca e o modelo do carro
select
	marcas.nome,
	carros.modelo
	from carros
	-- inner join tabelaPai on (tabelaFilha.fk = tabelaPai.pk)
	inner join marcas on (carros.id_marca = marcas.id);

select
	versoes.id,
	marcas.nome,
	carros.modelo,
	linhas.nome,
	versoes.ano,
	versoes.preco
	from versoes
	inner join linhas on (versoes.id_linha = linhas.id)
	inner join carros on (versoes.id_carro = carros.id)
	inner join marcas on (carros.id = marcas.id);

-- criar uma tabela de estados (id, nome)
-- 		cadastrando 3 estados

-- criar uma tabela de cidades (id, id_estado, nome)
-- 		cadastrando 3 cidades para estados diferentes
-- consultar as cidades utilizando inner join













