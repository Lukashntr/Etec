
--CRIANDO BANCO DE DADOS--
create database cadastro;

--EXIBIR BANCO DE DADOS--
show cadastro;

--EXIBIR BANCO DE DADOS--
use cadastro;

--CRIAR TABELAS--
create table cliente(
ID_CLIENTE	INT NOT NULL,
NOME_CLIENTE VARCHAR(40) NOT NULL,
EMAIL_CLIENTE VARCHAR (40) NOT NULL,
primary key (ID_CLIENTE)
);
desc cliente;

--describe--descrição da tabela--

--EXIBIR TABELAS--
show tables;

create table produto(
id_produto int not null,
nome_produto varchar (40) not null,
valor_produto  double not null,
tipo_produto varchar (40) not null,
primary key (id_produto)
);
desc produto;

create table fabricante(
id_fabricante int not null,
nome_fabricante varchar(20) not null,
cnpj_fabricante char (13) not null,
primary key(id_fabricante)
);
desc fabricante;

create table endereco_cliente(
id_endereco int not null;
rua_endereco varchar (40) not null 
numero_endereco int not null,
bairro_endereco varchar(40) not null,
cep_endereco char(8) int not null,
estado_endereco varchar(20) not null,
primary key(id_endereco)
);
desc endereco_cliente;