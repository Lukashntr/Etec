
select * from turma;

select id_turma, tipo_atividade, data_inicial from turma;

select duracão_aula, numeros_alunos from turma where id_turma = 1;

select id_turma, concat(' Quantidade de Alunos: ', numero_alunos, ' Dia da aula : ', data_inicial) AS Detalhes, tipo_atividade from turma;
