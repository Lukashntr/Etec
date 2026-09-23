algoritmo "semnome"
// Função :
// Autor :
// Data : 20/06/2017
// Seção de Declarações
var
matriz:vetor[1..2 , 1..5] de inteiro
contc : inteiro
contl: inteiro
inicio
escreval("INFORME O DIA E A SEMANA:")
escreval("DOMINGO: DIAS 1 6 11 16 21 26 31")
escreval("SEGUNDA: DIAS 2 7 12 17 22 27")
escreval("TERÇA: DIAS 3 8 13 18 23 28")
escreval("QUARTA: DIAS 4 9 14 19 24 29")
escreval("QUINTA: DIAS 5 10 15 20 25 30")
para contl de 1 ate 5 faca
   para contc de 1 ate 2 faca
      leia(matriz[ contc , contl])
   fimpara
   fimpara

fimalgoritmo
