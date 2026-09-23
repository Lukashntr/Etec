n1 = int
n2 = int 

n1 = int(input(" Informe o primeiro numero: "))
n2 = int(input(" Informe o segundo numero: "))

while n1 <= n2 :
   
    if n1 % 2 == 0:
        print("NAO PRIMOS", n1)
        n1 = n1 + 1
    else :
        print("PRIMOS ", n1)
        n1 = n1 + 1
