print(' QUESTÃO 04 A MAIS HARD KKK ')

vet = []
soma = 0
media = 0
for x in range(50):
    a = int(input(' digite um numero '))
    vet.append(a)

print(' numeros do vetor ', vet)

for x in range(50):
    soma = soma + vet[x]
    media = soma / len(vet)

y = 0
w = 0

for x in range(50):
    if vet[x] % 2 == 0:
        y = y + 1
    elif vet[x] % 2 != 0:
        w = w + 1

print(' a soma dos numeros é ', soma)
print(' a media dos numeros é ', media)
print(' Os numeros pares são ', y)
print(' Os numeros impares são ', w)
