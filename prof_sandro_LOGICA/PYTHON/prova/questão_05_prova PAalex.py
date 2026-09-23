print(' Brincadeira entre colegas ')

a = int(input(' digite um numero '))

h = 0
y = 0
w = 1

while( y < w):
    b = int(input(' digite outo numero para tentar acertar o primeiro '))
    if a > b:
        print(' Chute baixo')
        h = h + 1
    elif a < b:
        print(' chute alto ')
        h = h + 1
    else:
        print(' Você acertou o numero ')
        h = h + 1
        y = y + 1

print(' Você conseguiu, acertou o numero ')
print(' o número digitado foi ', a)
print(' o total de chutes foi ', h)