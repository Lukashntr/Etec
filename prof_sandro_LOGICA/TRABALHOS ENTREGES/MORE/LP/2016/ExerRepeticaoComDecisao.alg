algoritmo "semnome"
// Função :
// Autor :
// Data : 21/10/2015
// Seção de Declarações 
var

PRATA, BRANCA, PRETA, CINZA, OUTRAS : INTEIRO
COR, TOTAL      : INTEIRO

inicio
// Seção de Comandos 

ENQUANTO COR <> 999 FACA

  LEIA(COR)
  SE COR = 1 ENTAO
      PRATA <- PRATA+1
    SENAO
      SE COR = 2 ENTAO
           BRANCA <- BRANCA+1
         SENAO
           SE COR = 3 ENTAO
                PRETA <- PRETA+1
              SENAO
                SE COR = 4 ENTAO
                     CINZA <- CINZA+1
                   SENAO
                     SE COR = 5 ENTAO
                        OUTRAS <- OUTRAS+1
                       SENAO
                          ESCREVAL("COR INVALIDA")
                     FIMSE
                FIMSE
           FIMSE
      FIMSE
  FIMSE

FIMENQUANTO
LIMPATELA

TOTAL <- PRATA+BRANCA+PRETA+CINZA+OUTRAS

ESCREVAL("RESULTADO")
ESCREVAL
ESCREVAL("PRATA : ",PRATA, " - ", PRATA/TOTAL*100:2:1)
ESCREVAL("BRANCA: ",BRANCA, " - ", BRANCA/TOTAL*100:2:1)
ESCREVAL("PRETA : ",PRETA, " - ", PRETA/TOTAL*100:2:1)
ESCREVAL("CINZA : ",CINZA, " - ", CINZA/TOTAL*100:2:1)
ESCREVAL("OUTRAS: ",OUTRAS, " - ", OUTRAS/TOTAL*100:2:1)
ESCREVAL("----------")
ESCREVAL("TOTAL : ", TOTAL)

fimalgoritmo
