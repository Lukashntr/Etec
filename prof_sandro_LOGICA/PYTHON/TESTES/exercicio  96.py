print(' Exercicio Guanabara 96 ')

def areaTerreno(a,b):
    res = a * b
    return print(f'a largura do terreno de {a}x{b} em metros quadrados é', res,'m²')

fre = float(input(' informe o tamanho do terreno de frente (metros): '))
fun = float(input(' Informe o tamanho do terreno de fundo (metros):  '))
areaTerreno(fre,fun)
