algoritmo "semnome"
// Função :
// Autor :
// Data : 20/06/2017
// Seção de Declarações
var
dia:vetor[1..5 , 1..2] de inteiro
auxiliar:vetor[1..5]de caracter
contc: inteiro
contl: inteiro

inicio
escreval("INFORME O DIA E A SEMANA:")

para contl de 1 ate 5 faca
   para contc de 1 ate 2 faca
      leia(dia[ contl , contc])
   fimpara
fimpara

para contl de 1 ate 5 faca
     se (dia[contl , 1] > 31) entao
auxiliar[contl]<-"DIA INVALIDO"
senao
     se(dia[contl , 1]<1) entao
auxiliar[contl]<-"DIA INVALIDO"
     senao
     se dia[contl , 1]>20 entao
auxiliar[contl]<-"FIM DE MES"
     senao
     se dia[contl , 1]>10 entao
auxiliar[contl]<-"MEIO DO MES"
     senao
auxiliar[contl]<-"INICIO DO MES"
fimse
fimse
fimse
fimse
fimpara
fimalgoritmo
