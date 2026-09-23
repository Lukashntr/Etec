print('---CALCULO FATORIAL---')

n = int
fat = int 

fat = 1
n = int(input('INFORME O NUMERO QUE DESEJA VER O FATORIAL'))

while  n > 1 :

    fat = fat * n
    n = n - 1

    print('O fatorial do numero digitado é:', fat)

pass
    
print('---FIM DA EXECUÇÃO---')