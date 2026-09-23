print(' Exercício 97 Guanabara ')

def escreva(p):
    txt = p
    tamanho_da_string = len(txt)
    r = '=' * tamanho_da_string
    return r

a = []

for x in range(3):
    a.append(input(' Escreva um texto: '))

for x in range(len(a)):
    print(escreva(a[x]))
    print(a[x])
    print(escreva(a[x]))

