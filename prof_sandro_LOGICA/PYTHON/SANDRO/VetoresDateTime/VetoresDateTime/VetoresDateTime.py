from datetime import datetime
from math import floor

print
nomes = []
datas = []
cursos = []
data = datas
c = 1
d = 1 

print(" INFORME SEUS DADOS ")

while c <= 1:
    nomes.append(input(" informe o nome do aluno "))
    datas.append(float(input(" informe a data de nascimento exemplo 00-00-00 ")))
    cursos.append(input(" informe o curso "))
    c =c + 1 


while d <= 5:
    print(nomes[d]," -- ",data," -- ",cursos[d])
    d = d + 1

print(" -- FIM DA EXECUÇÃO -- ")
