algoritmo "Exercício 4"
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
  limpatela
fimpara

  para vCont de 1 ate 5 faca
   escreva("Dia do Mês - ")
   escreval(vDia[vCont,1])
   escreva("Dia da Semana - ")
   escreval(vDia[vCont,2])
   escreval
  fimpara
  escreval("Qual o dia que você deseja olhar?")
  para vCont de 5 ate 1 faca
  vCont <- 6-1
  fimpara
  leia (vDia[vCont,1])
  escreval
  se vDia[vCont,1] > 31 entao
   escreval("Dia Inválido")
    senao
    se vDia[vCont,1] > 20 entao
    escreval("Fim do Mês")
     senao
    se vDia[vCont,1] > 10 entao
     escreval("Meio do Mês")
     senao
     escreval("Início do Mês")
    fimse
  fimse
 fimse




fimalgoritmo
