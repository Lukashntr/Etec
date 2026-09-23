algoritmo "Exercício 4"
// Função :
// Autor : GIOVANNI
// Data : 26/06/2017
// Seção de Declarações 
var
vDia: vetor [1..5,1..2] de inteiro
vDiaSemana, vCont: inteiro
vClassificacao: caracter
inicio
// Seção de Comandos
para vCont de 1 ate 5 faca
  escreval("Qual dia desejado?, Nº-", vCont)
  leia (vDia[vCont,1])
  escreval("Qual o dia da semana?, Nº-", vCont)
  leia(vDia[vCont,2])
  limpatela
fimpara

  para vCont de 5 ate 1 faca
  vCont <- 6-1
  fimpara
  escreval
  se vDia[vCont,1] > 31 entao
   escreval("Dia Inválido")
    vClassificacao <- "Dia Inválido"
     senao
     se vDia[vCont,1] > 20 entao
     vClassificacao <- "Fim do Mês"
     senao
     se vDia[vCont,1] > 10 entao
     vClassificacao <- "Meio do Mês"
     senao
     vClassificacao <- "Início do Mês"
     fimse
   fimse
  fimse

   escreval("Dia |Dia da Semana|Classificação")
   para vCont de 1 ate 5 faca
   escreval(vDia[vCont,1]," |     ",  vDia[vCont,2],  "     |   ",vClassificacao)
   fimpara






fimalgoritmo
