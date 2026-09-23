Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 09/05/2017
Var
// Seção de Declarações das variáveis 

vOriginal : vetor [1..5] de inteiro
vContador : inteiro
vAuxiliar : inteiro
vContador2: inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   ESCREVAL("Forneça 05 números aleatórios:")

   PARA vContador DE 1 ATE 5 FACA
      ESCREVA(vContador," - ")
      LEIA(vOriginal[vContador])
   FIMPARA
   
   PARA vContador2 DE 1 ATE 4 FACA
      PARA vContador DE 1 ATE 4 FACA
         SE vOriginal[vContador] > vOriginal[vContador+1] ENTAO
           vAuxiliar <- vOriginal[vContador]
           vOriginal[vContador] <- vOriginal[vContador+1]
           vOriginal[vContador+1] <- vAuxiliar
         FIMSE
      FIMPARA
   FIMPARA
   
   ESCREVAL
   ESCREVAL("Saída organizada - Crescente")

   
   PARA vContador DE 1 ATE 5 FACA
      ESCREVAL(vContador, " = ", vOriginal[vContador])
   FIMPARA
   
   
Fimalgoritmo