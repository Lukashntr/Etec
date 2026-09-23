algoritmo "atividade sandro dos tres numeros iguais"
// Função :
// Autor :
// Data : 21/08/2019
// Seção de Declarações
var
n1, n2, n3, maior: real
soma: real

inicio
// Seção de Comandos
   leia (n1)
   leia (n2)
   leia (n3)

soma <- n1+n2+n3
 escreval (" A soma dos numeros é:", soma )
    se (n1 = n2) entao
      se (n1 = n3) entao
            escreva (" os tres numeros são iguais, ")
     fimse
     fimse
     se (n1 > n2) entao
        maior <- n1
     senao
        maior <- n2
     fimse
     se (maior > n3) entao
         escreva ("o maior numero é:", maior)
     senao
         maior <- n3
         escreva("o maior numero é:", maior)
     fimse
     

fimalgoritmo
fimse
