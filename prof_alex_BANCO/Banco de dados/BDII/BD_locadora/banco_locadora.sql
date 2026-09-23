/* Criando a tabela locadora */
show databases;

create database locadora; /* comando para criar o banco */

use locadora /* Comando para selecionar o banco */

/* Criando a table cliente */
create table cliente( 
	id_cliente int(11) primary key,
	nome_cliente varchar(50) not null,
	cnh_cliente varchar(11) not null,
	endereco_cliente varchar(100) not null

);
desc cliente;

/* Criando a tabela telefone */
create table telefone(
	telefone_pk int(11) primary key,
	telefone varchar(15) not null,
	id_cliente int(11) not null,
	foreign key(id_cliente) references cliente(id_cliente)

);
desc telefone;

/* Criando a tabela carro */
create table carro(
	id_carro int(11) primary key,
	placa varchar(8) not null,
	cor_carro varchar(15) not null,
	modelo varchar(20) not null,
	diaria double not null
);
desc carro;

/* Criando a tabela aluga */
create table aluga(
	id_aluga int(11) primary key,
	data_inicial date not null,
	data_final date not null,
	id_carro int(11) not null,
	id_cliente int(11) not null,
	foreign key(id_carro) references carro(id_carro),
	foreign key(id_cliente) references cliente(id_cliente)
);
desc aluga;

/* Criando a tabela esportivo */

create table esportivo(
	velocidade double not null,
	id_carro int(11) not null,
	foreign key(id_carro) references carro(id_carro)
);

/* Criando a tabela Sedã */

create table seda(
	passageiros int(11) not null,
	id_carro int(11) not null,
	foreign key(id_carro) references carro(id_carro)
);

