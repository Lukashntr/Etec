print(' VETORES DATETIME ')

alunosNomes = []
alunosDatas = []
alunosCursos = []
c = 1

while c <= 5:
    print('--- Informe os dados do ', c ,'º aluno ---')
    alunosNomes.append(input(' Informe o nome do ', (str(c)) ,'º aluno: '))
    alunosDatas.append(input(' Informe a data de nascimento do ',(str(c)),'º aluno: '))
    alunosCursos.append(input(' Informe o curso do ',(str(c)),'º aluno: '))
    c = c + 1

for d in range (5):
    print('--- SAIDA DE DADOS ---')
    print(alunosNomes[d],alunosDatas[d],alunosCursos[d])
    d = d + 1
print(' FIM DA EXECUÇÃO ')
