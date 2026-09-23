/* comando para apagar o banco dedados 
drop database nome da banco que deseja apagar ex:*/
drop database gravadora;

/* comando para listar os bancos de dados existentes*/
show databases;

/* comando para criação do banco gravadora*/
use gravadora;

/* comando para criação da tabela gravadora_*/

create table gravadora_(
	id_gravadora int(11) primary key,
	nome_gravadora varchar(60),
	endereco_gravadora varchar(60),
	telefone_gravadora varchar(20),
	contato_gravadora varchar(20),
	url_gravadora varchar(80)
);

/* comando para criação da tabela cd*/

create table cd(
	id_cd int(11) primary key,
	id_gravadora int(11) not null,
	nome_cd varchar(60) not null,
	preco_venda_cd decimal(14,2),
	data_lancamento_cd date,
	cd_indicado int(11),
	foreign key(id_gravadora) references gravadora_(id_gravadora)
);

/* comando para criação da tabela cd_categoria*/

create table cd_categoria(
	id_cd_categoria int(11) primary key,
	menor_preco decimal(14,2) not null,
	maior_preco decimal(14,2) not null,
	id_cd int(11) not null,
	foreign key(id_cd) references cd(id_cd)

);

/* comando para criação da tabela musica */

create table musica(
	id_musica int(11) primary key,
	nome_musica varchar(60),
	duracao_musica time null
);

/* comando para criação da tabela faixa */

create table faixa(
	id_musica int(11) not null,
	id_cd int(11) not null,
	numero_faixa int(11) not null,
	primary key(id_musica,id_cd),
	foreign key(id_musica) references musica(id_musica),
	foreign key(id_cd) references cd(id_cd)
);

/* comando para criação da tabela autor*/

create table autor(
	id_autor int(11) primary key,
	nome_autor varchar(60)
);

/* comando para criação da tabela musica autor*/

create table musica_autor(
	id_musica int(11) not null,
	id_autor int(11) not null,
	primary key(id_musica,id_autor),
	foreign key(id_musica) references musica(id_musica),
	foreign key(id_autor) references autor(id_autor)
);

/*comando para listar as tabelas no banco*/
show tables;
/* comando para criar o banco de dados apartir de um arquivo de texto
quando copiar o caminho não esquece de substituir as barras unicas por barras duplas */
source C:\\Users\\labinfo\\Downloads