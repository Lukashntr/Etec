#Pesquisando registros na tabela proprietario


select * from proprietario;

select nome_Dono, endereco, bairro from proprietario;

select nome_Dono, endereco, bairro from proprietario where id_dono = 1;

select id_dono, concat(' Nome: ', nome_Dono, ', Reside em: ', endereco) AS Detalhes, cpf from proprietario;
