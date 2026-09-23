print(' 5 alunos prova ')

nome = []
rm = []
sexo = []
ano = []
y = 0
w = 0

for x in range(1):
    a = str(input(' Digite o nome do aluno(a): '))
    b = int(input(' Digite o RM do aluno(a): '))
    c = str(input(' Digite o sexo do aluno(a): '))
    d = str(input(' Digite a data de nascimento do aluno(a): '))
    nome.append(a)
    rm.append(b)
    sexo.append(c)
    ano.append(d)

print(nome)
print(rm)
print(sexo)
print(ano)

for x in range(1):
    if sexo[x] == ' feminino ':
        print(idadeCompleta(ano[x]))
        y = y + 1
    elif sexo[x] == ' masculino ':
        w = w + 1

print(totalIdade)

