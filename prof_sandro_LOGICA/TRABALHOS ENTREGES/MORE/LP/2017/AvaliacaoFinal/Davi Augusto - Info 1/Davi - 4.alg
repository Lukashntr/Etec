algoritmo "semnome"
// Função :
// Autor :
// Data : 20/06/2017
// Seção de Declarações
var

vDia : vetor [1..5,1..2] de inteiro
vProcessamento : vetor[1..5]de caracter
vContColuna : inteiro
vContlinha  : inteiro

inicio

escreval("Digite o dia do mês e da semana:  ")

para vContlinha de 1 ate 5 faca
   para vContColuna de 1 ate 2 faca
      leia(vDia[vContlinha,vContColuna])
   fimpara
fimpara
para vContlinha de 1 ate 5 faca
   se (vDia[vContlinha,1] > 31)entao
    vProcessamento[vContlinha]<- "Dia não encontrado"
     senao
      se(vDia[vContlinha,1]< 1) entao
         vProcessamento[vContlinha]<- "Dia não encontrado"
      senao
         se vDia[vContlinha,1] > 20 entao
            vProcessamento[vContlinha]<- "fim"
         senao
            se vDia[vContlinha,1] > 10 entao
               vProcessamento[vContlinha]<- "meio"
            senao
               vProcessamento[vContlinha]<- "Inicio"
            fimse
         fimse
      fimse
   fimse
fimpara
fimalgoritmo
