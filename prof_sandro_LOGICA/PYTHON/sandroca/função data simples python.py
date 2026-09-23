
from datetime import datetime


def idade(dataN):
    dataNL = datetime.strptime(dataN, '%d/%m/%Y').date()
    dataHL = datetime.today().date()
    idadeL = dataHL.year - dataNL.year
    if dataNL.month > dataHL.month:
        idadeL = idadel - 1
    elif dataNL.month == dataHL.month and dataNL.day > dataHL.day:
        idadeL = idadeL - 1
    return idadeL


alunoN = []
alunoD = []
alunoC = []

print("Programa para entrada de infos de 5 alunos")

for n in range(5):
    alunoN.append(input("Nome do aluno...: "))
    alunoD.append(input("Dt Nasc do aluno: "))
    alunoC.append(input("Nome do curso...: "))

for n in range(5):
    print(alunoN[n]," - ",alunoD[n]," - ",idade(alunoD[n])," - ",alunoC[n])