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
mai: inteiro
men:inteiro
mai2: inteiro
men2:inteiro


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

limpatela
escreval(" DIA  |  DIA DA SEMANA  |  CLASSIFICAÇÃO")
para contl de 1 ate 5 faca
   escreval(dia[contl , 1]:2 , "  |  " , dia[contl , 2]:8 , "        |  "  , auxiliar[contl] )
fimpara

se dia[1 , 1] > dia[2 ,1 ] entao
mai<- dia[1 , 1]
men<- dia[2 , 1]
senao
men<- dia[1 , 1]

fimse
se mai < dia[3,1] entao
men<- dia[3,1]
fimse
se mai < dia[4,1] entao
mai<- dia[4,1]
fimse
se mai < dia[5,1] entao
mai<- dia[5,1]





fimse
se men> dia[3,1] entao
men<- dia[3,1]
fimse
se min > dia[4,1] entao
vmin<- dia[4,1]
fimse
se min > dia[5,1] entao
men<- dia[5,1]
fimse

para vContCol de 1 ate 5 faca
 se mai= dia[contc , 1] entao
    mai2<- contc
 fimse
fimpara
para contc de 1 ate 5 faca
 se men= dia[contc , 1] entao
    men2<- contc
 fimse
fimpara
escreval("O MAIOR DIA É:")
escreval(mai:2 , "  |" , dia[mai2 , 2]:8 ,"      |   "  , auxiliar[mai2 ])
 escreval("O MENOR DIA É:")
escreval(men:2 , "  |" , dia[men2 , 2]:8 ,"      |   "  , auxiliar[men2 ])
fimalgoritmo
fimalgoritmo
