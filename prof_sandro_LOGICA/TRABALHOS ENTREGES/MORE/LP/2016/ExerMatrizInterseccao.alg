algoritmo "semnome"
// Função :
// Autor :
// Data : 16/11/2015
// Seção de Declarações 
var
matriz : vetor [1..5,1..5] de inteiro
vcontL : inteiro
vcontC : inteiro
inicio
// Seção de Comandos

para vcontL de 1 ate 5 faca
    para vcontC de 1 ate 5 faca
      SE vcontL = vcontc ENTAO
       matriz[vcontL,vContC] <-  vcontL * vcontC
      SENAO
       matriz[vcontL,vContC] <- 0
      FIMSE
      escreva(matriz[vcontL,vContC]:2, "  ")
    fimpara
    ESCREVAL
fimpara
 
fimalgoritmo
