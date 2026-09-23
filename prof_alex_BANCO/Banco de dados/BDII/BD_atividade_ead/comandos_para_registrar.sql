#Inserindo dados na tabela Instrutor 
insert into instrutor(rg_intrutor,nome_instrutor,data_nasc_instrutor,titulação)
values ('38.263.056-7',' Miguel Lukas ','2001/04/07',' PAM ');

insert into instrutor(rg_intrutor,nome_instrutor,data_nasc_instrutor,titulação)
values ('38.263.056-1',' Josefa Costa ','1974/01/03',' PA ');

insert into instrutor(rg_intrutor,nome_instrutor,data_nasc_instrutor,titulação)
values ('38.263.056-2',' Gilmara Luiza ','1997/01/10',' PWI ');

insert into instrutor(rg_intrutor,nome_instrutor,data_nasc_instrutor,titulação)
values ('38.263.056-3',' Allyce Costa ','2013/11/12',' PWII ');

insert into instrutor(rg_intrutor,nome_instrutor,data_nasc_instrutor,titulação)
values ('38.263.056-4',' Andre Carlos ','2013/11/12',' BD ');


#Inserindo dados na tabela Aluno 
insert into aluno(matricula,nome_aluno,data_nasc_aluno,altura,peso)
values ('001',' Miguel Lukas ','2001/04/07','1.75','54.0');

insert into aluno(matricula,nome_aluno,data_nasc_aluno,altura,peso)
values ('002',' Josefa Costa ','1974/01/03','1.65','60.0');

insert into aluno(matricula,nome_aluno,data_nasc_aluno,altura,peso)
values ('003',' Gilmara Luiza ','1997/01/10','1.60','75.0');

insert into aluno(matricula,nome_aluno,data_nasc_aluno,altura,peso)
values ('004',' Allyce Costa ','2013/11/12','1.0','30.0');

insert into aluno(matricula,nome_aluno,data_nasc_aluno,altura,peso)
values ('004',' Andre Carlos ','2013/11/12','1.0','30.0');


#Inserindo dados na tabela Turma 
insert into turma(numero_alunos,duração_aula,data_inicial,data_final,tipo_atividade,id_instrutor,id_aluno)
values (20,'1:30:00','2020/02/20','2020/11/30','DS',1,1);

insert into turma(numero_alunos,duração_aula,data_inicial,data_final,tipo_atividade,id_instrutor,id_aluno)
values (20,'1:30:00','2020/02/20','2020/11/30','DS',1,2);

insert into turma(numero_alunos,duração_aula,data_inicial,data_final,tipo_atividade,id_instrutor,id_aluno)
values (20,'1:30:00','2020/02/20','2020/11/30','DS',1,3);

insert into turma(numero_alunos,duração_aula,data_inicial,data_final,tipo_atividade,id_instrutor,id_aluno)
values (20,'1:30:00','2020/02/20','2020/11/30','DS',1,4);

insert into turma(numero_alunos,duração_aula,data_inicial,data_final,tipo_atividade,id_instrutor,id_aluno)
values (20,'1:30:00','2020/02/20','2020/11/30','DS',1,5);

#Inserindo dados na tabela telefone
insert into telefone(ddd,ramal,telefone_celular01,telefone_celular02,telefone_trabalho,telefone_fixo,id_instrutor,id_aluno)
values (11,001,951947601,000000000,0,0,1,1);

insert into telefone(ddd,ramal,telefone_celular01,telefone_celular02,telefone_trabalho,telefone_fixo,id_instrutor,id_aluno)
values (11,002,95895802,000000000,0,0,2,2);

insert into telefone(ddd,ramal,telefone_celular01,telefone_celular02,telefone_trabalho,telefone_fixo,id_instrutor,id_aluno)
values (11,003,950506060,000000000,0,0,3,3);

insert into telefone(ddd,ramal,telefone_celular01,telefone_celular02,telefone_trabalho,telefone_fixo,id_instrutor,id_aluno)
values (11,004,978787676,000000000,0,0,4,4);

insert into telefone(ddd,ramal,telefone_celular01,telefone_celular02,telefone_trabalho,telefone_fixo,id_instrutor,id_aluno)
values (11,005,945456767,000000000,0,0,5,5);


#Inserindo dados na tabela endereco 
insert into endereco(numero_residencia,bloco,andar,rua,bairro,municipio,uf,complemento,ponto_referencia,id_instrutor,id_aluno)
values ('15',null,null,'Viscardo beluzzo','Vila Gilda','São Paulo','SP','Casa','Quadra de socyte',1,1);

insert into endereco(numero_residencia,bloco,andar,rua,bairro,municipio,uf,complemento,ponto_referencia,id_instrutor,id_aluno)
values ('15',null,null,'Viscardo beluzzo','Vila Gilda','São Paulo','SP','Casa','Quadra de socyte',2,2);

insert into endereco(numero_residencia,bloco,andar,rua,bairro,municipio,uf,complemento,ponto_referencia,id_instrutor,id_aluno)
values ('588',null,null,'Av. Caporanga','Cidade Ipava','São Paulo','SP','Casa','Escola Peratuba',3,3);

insert into endereco(numero_residencia,bloco,andar,rua,bairro,municipio,uf,complemento,ponto_referencia,id_instrutor,id_aluno)
values ('15',null,null,'Viscardo beluzzo','Vila Gilda','São Paulo','SP','Casa','Quadra de socyte',4,4);

insert into endereco(numero_residencia,bloco,andar,rua,bairro,municipio,uf,complemento,ponto_referencia,id_instrutor,id_aluno)
values ('15',null,null,'Viscardo beluzzo','Vila Gilda','São Paulo','SP','Casa','Quadra de socyte',5,5);



ALTER TABLE nome_da_tabela MODIFY COLUMN nome_da_coluna INT(6) auto_increment

