from idade import idadeCompleta

aluno = []
alunoMatriz = []

print("Programa para entrada de infos de 5 alunos")

for n in range(3):
    aluno.append(input("Nome do aluno...: "))
    aluno.append(input("Dt Nasc do aluno: "))
    aluno.append(input("Nome do curso...: "))
    alunoMatriz.append(aluno)

for n in range(3):
    vIdade = idadeCompleta(alunoMatriz[n][1])
    print("{0} - {1} {2:1d} anos, {3:1d} meses e {4:1d} dias - {5}".format(alunoMatriz[n][0], alunoMatriz[n][1], vIdade[0], vIdade[1], vIdade[2], alunoMatriz[n][2]))
    arquivo = open("arquivo python")
    arquivo.write((alunoMatriz[n][0], alunoMatriz[n][1], vIdade[0], vIdade[1], vIdade[2], alunoMatriz[n][2]))

