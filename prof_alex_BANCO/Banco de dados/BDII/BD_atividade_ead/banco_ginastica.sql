# Criando o banco de dados banco_ginastica atividade EAD 

create database banco_ginastica;

# Selecionando o banco de dados banco_ginastica

use banco_ginastica

# Criando a tabela instrutor
create table instrutor(
    id_instrutor int (11) primary key,
    rg_intrutor varchar (20) not null,
    nome_instrutor varchar (50) not null,
    data_nasc_instrutor date not null,
    titulação varchar (20) not null
);
ALTER TABLE `instrutor` MODIFY `id_instrutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

# Criando a tabela aluno
create table aluno(
    id_aluno int (11) primary key,
    matricula varchar (20) not null,
    nome_aluno varchar (50) not null,
    data_nasc_aluno date not null,
    altura float not null,
    peso float not null

);
ALTER TABLE `aluno` MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

# Criando a tabela turma
create table turma(
    id_turma int (11) primary key,
    numero_alunos int (40) not null,
    duração_aula time not null,
    data_inicial date not null,
    data_final date not null,
    tipo_atividade varchar (30) not null,
    id_instrutor int (11) not null,
    id_aluno int (11) not null,
    foreign key(id_instrutor) references instrutor(id_instrutor),
    foreign key(id_aluno) references aluno(id_aluno)

);
ALTER TABLE `turma` MODIFY `id_turma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

# Criando a tabela Telefone
create table telefone(
    id_telefone int (11) primary key,
    ddd int (2) not null,
    ramal int(11) null,
    telefone_celular01 int(13) not null,
    telefone_celular02 int(13) not null,
    telefone_trabalho  int(13) null,
    telefone_fixo int(13) null,
    id_instrutor int (11) not null,
    id_aluno int (11) not null,
    foreign key(id_instrutor) references instrutor(id_instrutor),
    foreign key(id_aluno) references aluno(id_aluno)

);
ALTER TABLE `telefone` MODIFY `id_telefone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

# Criando a tabela Endereço
create table endereco (
    id_endereco int(11) primary key,
    numero_residencia varchar(20) not null,
    bloco varchar(10) null,
    andar varchar(3) null,
    rua varchar(50) not null,
    bairro varchar(50) not null,
    municipio varchar(30) not null,
    uf char(2) not null,
    complemento varchar(30) null,
    ponto_referencia varchar(30) null,
    id_instrutor int (11) not null,
    id_aluno int (11) not null,
    foreign key(id_instrutor) references instrutor(id_instrutor),
    foreign key(id_aluno) references aluno(id_aluno)

);
ALTER TABLE `endereco` MODIFY `id_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;