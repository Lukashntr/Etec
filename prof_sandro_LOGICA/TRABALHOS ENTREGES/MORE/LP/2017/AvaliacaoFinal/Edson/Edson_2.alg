algoritmo "Semnome"
// Função :
// Autor :
// Data : 20/06/2017
// Seção de Declarações
var
//Primeira parte
vDia : vetor [1..5,1..2] de inteiro
vClassifica : vetor [1..6] de inteiro
vContLinha2 : inteiro
vContLinha, vContcoluna: inteiro

inicio
vContLinha2 <- vContLinha2 + 1
para vContLinha de 1 ate 5 faca
     para vContLinha2 de 1 ate 5 faca
   Escreva ("Digite o dia: ")
   para vContColuna de 1 ate 2 faca
      Leia (vDia[vContLinha, vContColuna])
      Escreva("Digite o dia da semana: ")
      vContLinha2 <- vContLinha
      vContLinha2 <- vContLinha2
   fimpara
   limpatela
fimpara


//Segunda parte

para vContLinha de 1 ate 5 faca
    Se vContLinha <= 10 entao
     Escreval("Início do mês")
  senao
     se dia <= 20 entao
         Escreval("Meio do mês")
       senao
         se dia <= 31 entao
             Escreval("Fim do mês")
           senao
             Escreval("Dia inválido!")
         fimse
     fimse
fimse
fimpara



//terceira parte

fimalgoritmo
