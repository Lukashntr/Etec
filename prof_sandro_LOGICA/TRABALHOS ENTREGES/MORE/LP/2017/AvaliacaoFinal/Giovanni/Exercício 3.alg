algoritmo "Exercício 3"
// Função :
// Autor : GIOVANNI
// Data : 26/06/2017
// Seção de Declarações 
var
vDia: vetor [1..5,1..2] de inteiro
vDiaSemana: inteiro
vCont: inteiro
inicio
// Seção de Comandos


para vCont de 1 ate 5 faca
  escreval("Qual dia desejado?, Nº-", vCont)
  leia (vDia[vCont,1])
  escreval("Qual o dia da semana?, Nº-", vCont)
  leia(vDia[vCont,2])
  escreval
fimpara
fimalgoritmo
