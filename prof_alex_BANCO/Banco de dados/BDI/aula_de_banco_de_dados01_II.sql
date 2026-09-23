 -- criando o banco de dados teste
 
create database teste;

-- consultar os banco de dados

show databases;

-- comando para selecionar o banco de dados

use teste;

-- comando para criação da tabela

create table medico(
	med_codigo int auto_increment,
    med_nome varchar(100) default ' nome do medico não informado',
	primary key(med_codigo)
);

-- consultar as tabelas no banco de dados

show tables;

-- comando para exibir a estrutura fisica da tabela 

desc medico;

-- comando para apagar a tabela

drop table medico;


 