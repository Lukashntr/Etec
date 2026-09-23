

show databases;

create database exemplo;

use exemplo;

#exemplo01
create table gente(
	id_gente int(11) primary key,
	nome_gente varchar(30) not null
);

alter table gente rename to pessoa;

#exemplo o2
create table loko(
	id_loko int(11),
	nome_loko varchar(30) not null,
	id_gente int not null
);

alter table loko add primary key(id_loko);


------------------------------------------------------------------
COMANDOS DO SQL


#comando para alterar o nome da tabela
alter table <nome_da_tabela> rename to <novo_nome_da_tabela>;
alter table gente rename to pessoa;

#comando para adicianar chave primaria 
alter table <nome_da_tabela> add primary key(nome_do_atributo);
alter table pessoa add primary key(cpf);

#comando para apagar a chave primaria
alter table <nome_da_tabela> drop primary key(nome_do_atributo);
alter table pessoa drop primary key(cpf);

#comando para criar uma chave estrangeira
alter table loko add foreign key(id_gente) references pessoa(id_gente);

#comando para adicionar coluna na tabela
alter table pessoa add column rg varchar(11)

#variados sem coluna
alter table pessoa add rg varchar(11)

#comando para adicianar uma coluna ANTES de outra
alter table loko add balalaika varchar(20) after nome_loko;

#comando para adicianar uma coluna como a PRIMEIRA da lista
alter table loko add vodka varchar(20) first;