algoritmo "Ordenar 2"
// Função : Ordenar uma lista em ordem crescente

var

 A      : VETOR [1..5,1..2] de caracter
 vcont  : INTEIRO
 posicao: inteiro
 aluno  : inteiro
 nome   : caracter
 idade  : caracter
 
inicio

 PARA VCONT DE 1 ATE 5 FACA
   LEIA(A[VCONT,1])
   LEIA(A[VCONT,2])
 FIMPARA

 PARA posicao de 1 ate 5 faca
     PARA aluno de 1 ate 5 faca
        SE (CARACPNUM(A[POSICAO,2]) < CARACPNUM(A[ALUNO,2])) ENTAO
          NOME  <- A[POSICAO,1]
          IDADE <- A[POSICAO,2]

          A[POSICAO,1] <- A[ALUNO,1]
          A[POSICAO,2] <- A[ALUNO,2]
          
          A[ALUNO,1]   <- NOME
          A[ALUNO,2]   <- IDADE

        FIMSE
     FIMPARA
 FIMPARA


fimalgoritmo
