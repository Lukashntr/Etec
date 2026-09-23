#criando banco de dados

show database;

create database banco_veiculos;

use banco_veiculos;

#criando a tabela proprietario
create table proprietario(
	id_dono int(11) primary key,
	nome_Dono varchar (50) not null,
	endereco varchar(100) not null,
	bairro varchar(45) not null,
	cpf varchar(45) not null,
	telefone varchar(45),
	data_Nascimento_Prop date not null

);
ALTER TABLE `proprietario` MODIFY `id_dono` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

#criando tabela categoria
 create table categoria(
	id_categoria int(11) primary key,
	categoria_veiculo varchar(45) not null
);
ALTER TABLE `categoria` MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

#criando tabela marca
create table marca(
	id_marca int(11) primary key,
	marca varchar(45) not null
);
ALTER TABLE `marca` MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

#criando tabela estado
create table estado(
	id_estado int(11) primary key,
	nome_estado varchar(45) not null
);
ALTER TABLE `estado` MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

#criando tabela municipio
create table municipio(
	id_municipio int(11) primary key,
	nome_municipio varchar(150),
	estado_id_estado int(11),
	foreign key(estado_id_estado) references estado(id_estado)

);
ALTER TABLE `municipio` MODIFY `id_municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

#criando a tabela veiculo

create table veiculo(
	id_veiculo int(11) primary key,
	placaVeiculo varchar(10) not null,
	anoVeiculo date not null,
	proprietario_id_dono int(11) not null,
	marca_id_marca int(11) not null,
	municipio_id_municipio int(11) not null,
	categoria_id_categoria int(11) not null,
	foreign key(proprietario_id_dono) references proprietario(id_dono),
	foreign key(marca_id_marca) references marca(id_marca),
	foreign key(municipio_id_municipio) references municipio(id_municipio),
	foreign key(categoria_id_categoria) references categoria(id_categoria)
);
ALTER TABLE `veiculo` MODIFY `id_veiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
