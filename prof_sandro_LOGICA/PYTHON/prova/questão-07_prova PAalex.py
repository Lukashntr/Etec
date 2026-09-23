print(' QUESTÃO 07 ')

vet01 = []
vet02 = []
mat = []

for x in range(5):
    a = int(input(' DIGITE UM NUMERO: '))
    b = int(input(' DIGITE UM NUMERO: '))
    vet01.append(a)
    vet02.append(b)

print(' o primeiro vetor contem os valores ', vet01)
print(' o segundo vetor contem os valores ',vet02)

mat.append(vet01)
mat.append(vet02)

print(mat)

for x in range(len(mat)):
    print(mat[x])




