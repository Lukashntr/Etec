show databases;

create database minha_oficina;

use minha_oficina;

drop table oficina;
create table oficina(
	id_oficina   int auto_increment,
	nome_oficina varchar(50) not null,
	cnpj_oficina char(14)    not null, 
	url_oficina  varchar(30) default 'sem url' null,
	primary key(id_oficina)
);
desc oficina;

insert into oficina (nome_oficina, cnpj_oficina)
values ('Oficina ETEC', '123456789');

insert into oficina(id_oficina,nome_oficina, cnpj_oficina, url_oficina)
values(1, 'Nova União Oficina', '98765432111111', 'wwww.novauniaoficina.com.br');

select nome_oficina from oficina;

create table veiculo(
	id_veiculo int not null,
	nome_veiculo varchar(50) not null,
	palca_veiculo char(7) not null,
	cor_veiculo varchar(20) not null,
	primary key (id_veiculo)

);
desc veiculo;    

create table peca(
	id_peca int not null,
	descricao_peca varchar(50) not null,
	valor_base_peca decimal(12,2) not null,
	data_cadastro date not null,
	primary key(id_peca)

);

desc peca;

create table reparo(
	id_reparo int not null,
	descricao_reparo varchar(200),
	data_reparo date not null,
	qt_peca int not null,
	vl_peca decimal(12,2) not null,
	vl_mao_obra decimal(12,2) not null,
	oficina_id_oficina int not null,
	veiculo_id_veiculo int not null,
	peca_id_peca int not null,
	primary key(id_reparo),
	foreign key(oficina_id_oficina) references oficina(id_oficina),
	foreign key(veiculo_id_veiculo) references veiculo(id_veiculo),
	foreign key(peca_id_peca) references peca(id_peca)
	

);
desc reparo;



insert into veiculo(id_veiculo,nome_veiculo,palca_veiculo,cor_veiculo)
values (1,' Sportage ','MIG1234',' PRATA ');
insert into veiculo(id_veiculo,nome_veiculo,palca_veiculo,cor_veiculo)
values (2,' ix35 ','LUK1234',' PRETO ');



insert into peca(id_peca,descricao_peca,valor_base_peca,data_cadastro)
values (1,'Rodas de liga leve', 200.99, '2019-11-28');
insert into peca(id_peca,descricao_peca,valor_base_peca,data_cadastro)
values (2,'Freio a disco', 136.99, '2019-11-28');

insert into reparo(id_reparo,descricao_reparo,data_reparo,qt_peca,vl_peca,vl_mao_obra,oficina_id_oficina,veiculo_id_veiculo,peca_id_peca)
values (1,'trocar as rodas','2019-11-28',4,200.99,70,1,1,1
insert into reparo(id_reparo,descricao_reparo,data_reparo,qt_peca,vl_peca,vl_mao_obra,oficina_id_oficina,veiculo_id_veiculo,peca_id_peca)
values (2,'trocar os freios','2019-11-28',2,50.99,30,2,2,2);





