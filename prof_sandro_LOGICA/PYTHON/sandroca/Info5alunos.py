from idade import idadeSimples, idadeCompleta

alunoNome   = []
alunoDtNasc = []
alunoCurso  = []

print("Programa para entrada de infos de 5 alunos")

for n in range(5):
    alunoNome.append(input("Nome do aluno...: "))
    alunoDtNasc.append(input("Dt Nasc do aluno: "))
    alunoCurso.append(input("Nome do curso...: "))

for n in range(5):
    vIdade = idadeCompleta(alunoDtNasc[n])
    print("{0} - {1} {2:1d} anos, {3:1d} meses e {4:1d} dias - {5}".format(alunoNome[n], alunoDtNasc[n], vIdade[0], vIdade[1], vIdade[2], alunoCurso[n]))
