algoritmo "Semnome"
// Função :
// Autor :
// Data : 20/06/2017
// Seção de Declarações
var
//Primeira parte
vDia : vetor [1..5,1..2] de inteiro
vClassifica : vetor [1..6] de inteiro
vAux2 : inteiro
vContLinha2 : inteiro
vContLinha, vContcoluna: inteiro

procedimento exibir
inicio
para vContLinha de 1 ate 5 faca
     para vContColuna de 1 ate 2 faca
     Escreval (vDia[vContLinha])
     fimpara
fimpara

fimprocedimento

inicio

para vContLinha de 1 ate 5 faca
   Escreva ("Digite o dia: ")
   para vContColuna de 1 ate 2 faca
      Leia (vDia[vContLinha, vContColuna])
      Escreva("Digite o dia da semana: ")
   fimpara
   limpatela
fimpara





fimalgoritmo
