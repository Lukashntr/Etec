create table cliente(
	id_cliente int not null,
	nome_cliente varchar(30) not null,
	email_cliente varchar(30) not null,
	primary key (id_cliente)
);
create table endereco(
	id_endereco int 		not null,
	rua 	varchar (30)	not null,
	numero char  			not null,
	bairro varchar	(30) 	not null,
	cep 	char			not null,
	cidade varchar	(30)	not null,
	estado varchar  (30)	not null,
	id_cliente int 			not null,
	primary key (id_endereco),
	foreign key (id_cliente) references cliente (id_cliente)
);
desc endereco;

create table produto(
	id_produto int not null,
	valor double not null,
	nome varchar (30) not null,
	tipo varchar(20) not null,
	id_cliente int not null,
	primary key (id_produto),
	foreign key (id_cliente) references cliente (id_cliente)

); insert into cliente (id_cliente, nome_cliente, email_cliente) values (1, "miguel", "miguel.almeida4@etec.sp.gov.br");

