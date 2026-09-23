#desenvolvendo comandos para o registro de dados nas tabelas

#REGISTARNDO DADOS NA TABELA proprietario
insert into proprietario(id_dono,nome_Dono,endereco,bairro,cpf,telefone,data_Nascimento_Prop)
values (1,'Miguel lukas','Rua: viscardo belluzo','Vila Gilda','999.999.999.99','951947601','2001/04/07');

insert into proprietario(id_dono,nome_Dono,endereco,bairro,cpf,telefone,data_Nascimento_Prop)
values (2,'adailton dos teclados','Rua: dos lokos ','Praça dos pneus','999.999.999.21','990909090','1999/08/30');

insert into proprietario(id_dono,nome_Dono,endereco,bairro,cpf,telefone,data_Nascimento_Prop)
values (3,'felipe aranha branca','Rua: da pedra','Meteoro do parque do lago','999.999.999.22','979797979','2000/05/09');

insert into proprietario(id_dono,nome_Dono,endereco,bairro,cpf,telefone,data_Nascimento_Prop)
values (4,'Daniel geixada ','Rua: do pó','Horizonte zul aonde ninguem vai','157.157.157.15','915715715','2000/07/23');

insert into proprietario(id_dono,nome_Dono,endereco,bairro,cpf,telefone,data_Nascimento_Prop)
values (5,'Robert thomas o trem','viela da agua','fronteira com o desconhecido','999.999.999.00','   ','2000/09/15');

#REGISTARNDO DADOS NA TABELA CATEGORIA

insert into categoria(id_categoria,categoria_veiculo)
values(1,'SUV');

insert into categoria(id_categoria,categoria_veiculo)
values(2,'SEDÃ COMPACTO');

insert into categoria(id_categoria,categoria_veiculo)
values(3,'SEDÃ GRANDE');

insert into categoria(id_categoria,categoria_veiculo)
values(4,'SUV GRANDE');

insert into categoria(id_categoria,categoria_veiculo)
values(5,'SEDÃ PEQUENO');


#REGISTARNDO DADOS NA TABELA estado


insert into estado(id_estado,nome_estado)
values(1,'São paulo');

insert into estado(id_estado,nome_estado)
values(2,'Acre');

insert into estado(id_estado,nome_estado)
values(3,'Marranhão');

insert into estado(id_estado,nome_estado)
values(4,'Ceara');

insert into estado(id_estado,nome_estado)
values(5,'Parana');

#REGISTARNDO DADOS NA TABELA municipio

insert into municipio(id_municipio,nome_municipio,estado_id_estado)
values(1,'São paulo',1);

insert into municipio(id_municipio,nome_municipio,estado_id_estado)
values(2,'capital do acre',2);

insert into municipio(id_municipio,nome_municipio,estado_id_estado)
values(3,'capital do Marranhão',3);

insert into municipio(id_municipio,nome_municipio,estado_id_estado)
values(4,'capital do Ceara',4);

insert into municipio(id_municipio,nome_municipio,estado_id_estado)
values(5,'capital do Parana',5);


#REGISTARNDO DADOS NA TABELA marca 

insert into marca(id_marca,marca)
values(1,'MERCEDES');

insert into marca(id_marca,marca)
values(2,'GM');

insert into marca(id_marca,marca)
values(3,'VOLKSWAGEN');

insert into marca(id_marca,marca)
values(4,'HYUNDAI');

insert into marca(id_marca,marca)
values(5,'KIA');

#REGISTARNDO DADOS NA TABELA veiculo

insert into veiculo(id_veiculo,placaVeiculo,anoVeiculo,proprietario_id_dono,marca_id_marca,municipio_id_municipio,categoria_id_categoria)
values (1,'LINDO0704','2020/01/01',1,1,1,1);

insert into veiculo(id_veiculo,placaVeiculo,anoVeiculo,proprietario_id_dono,marca_id_marca,municipio_id_municipio,categoria_id_categoria)
values (2,'ADALT9999','2020/01/01',2,2,2,2);

insert into veiculo(id_veiculo,placaVeiculo,anoVeiculo,proprietario_id_dono,marca_id_marca,municipio_id_municipio,categoria_id_categoria)
values (3,'FELIP9999','2020/01/01',3,3,3,3);

insert into veiculo(id_veiculo,placaVeiculo,anoVeiculo,proprietario_id_dono,marca_id_marca,municipio_id_municipio,categoria_id_categoria)
values (4,'DANIE1571','2020/01/01',4,4,4,4);

insert into veiculo(id_veiculo,placaVeiculo,anoVeiculo,proprietario_id_dono,marca_id_marca,municipio_id_municipio,categoria_id_categoria)
values (5,'ROBERT9999','2020/01/01',5,5,5,5);


select * from veiculo;









