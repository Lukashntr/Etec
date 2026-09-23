algoritmo "semnome"
// Função :
// Autor :
// Data : 20/06/2017
// Seção de Declarações
var

vDia : vetor[1..5,1..2] de inteiro
vProcessamento : vetor[1..5]de caracter
vContColuna : inteiro
vContLinha  : inteiro

inicio

escreval("Digite os dias da Semana e do mês:")

para vContLinha de 1 ate 5 faca
   para vContColuna de 1 ate 2 faca
      leia(vDia[vContLinha,vContColuna])
   fimpara
fimpara

para vContLinha de 1 ate 5 faca
se (vDia[vContLinha , 1]>31)entao
      vProcessamento[vContLinha]<- "Dia não encontrado"
   senao
      se(vDia[vContLinha , 1]<1) entao
         vProcessamento[vContLinha]<- "Dia não encontrado"
      senao
         se vDia[vContLinha , 1]>20 entao
            vProcessamento[vContLinha]<- "fim"
         senao
            se vDia[vContLinha , 1]>10 entao
               vProcessamento[vContLinha]<- "meio"
            senao
               vProcessamento[vContLinha]<- "Inicio"
            fimse
         fimse
      fimse
   fimse
fimpara
limpatela

escreval(" Dia | Dia da Semana | Classificacao")
para vContLinha de 1 ate 5 faca
   escreval(vDia[vContLinha,1]:2, "-" ,vDia[vContLinha,2]:8 ,"-", vProcessamento[vContLinha])
fimpara

fimalgoritmo
