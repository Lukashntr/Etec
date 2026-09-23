Create table endereco(
	id_endereco int(11) primary key,
	rua varchar (60) not null,
	numero varchar (10) not null,
	bairro varchar (60) not null,
	cep char (8) not null,
	complemento varchar (10) null,
	cidade varchar(60) not null,
	estado char (02) not null,
	id_cliente int not null,
	foreign key (id_cliente) references cliente(id_cliente)

);
desc endereco;
alter table cliente drop column endereco_cliente;

create table Tipoendereco(
	id_tipoendereco int primary key,
	descricao_tipo_endereco varchar (30) not null,
	id_endereco int not null,
	foreign key (id_endereco) references endereco(id_endereco)

);
 desc Tipoendereco;
 alter table telefone change telefone_pk id_telefone int;