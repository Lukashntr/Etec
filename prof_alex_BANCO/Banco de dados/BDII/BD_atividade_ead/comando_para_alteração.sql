# Atualizando dados na tabela ALUNO 

UPDATE aluno SET nome_aluno = 'Alex Sanchez' WHERE id_aluno = 1;

# Atualizando dados na tabela ENDERECO

UPDATE endereco SET rua  = 'rua do limão' WHERE id_endereco = 1;
UPDATE endereco set bairro = 'vale dos limoeiros' WHERE id_endereco = 1;

# Atualizando dados na tabela INSTRUTOR

UPDATE instrutor set data_nasc_instrutor = '1995/07/06' WHERE id_instrutor = 1;
UPDATE instrutor set nome_instrutor = 'Alex Sanchez' WHERE id_instrutor = 1;

# Atualizando dados na tabela TELEFONE
UPDATE telefone set ddd = '73' WHERE id_telefone;
UPDATE telefone set telefone_celular01 = '89220000';

# Atualizando dados na tabela TURMA 

UPDATE turma set numero_alunos = 15 WHERE id_turma = 1;
UPDATE turma set duração_aula = '1:00:00' WHERE id_turma;


