algoritmo "semnome"
// Função :
// Autor :
// Data : 26/10/2015
// Seção de Declarações 
var
   VOTO   : INTEIRO
   C1     : INTEIRO
   C2     : INTEIRO
   C3     : INTEIRO
   C4     : INTEIRO
   BRANCO : INTEIRO
   TOTAL  : INTEIRO
   REPRESENTANTE : INTEIRO
   SUPLENTE      : INTEIRO
inicio
// Seção de Comandos

ENQUANTO VOTO <> 7777 FACA
   LEIA(VOTO)
   SE VOTO = 1 ENTAO
       C1 <- C1+1
     SENAO
       SE VOTO = 2 ENTAO
           C2 <- C2 + 1
         SENAO
           SE VOTO = 3 ENTAO
               C3 <- C3 + 1
             SENAO
               SE VOTO = 4 ENTAO
                    C4 <- C4 + 1
                  SENAO
                    SE VOTO = 5 ENTAO
                        BRANCO <- BRANCO + 1
                      SENAO
                        SE VOTO = 7777 ENTAO
                            ESCREVAL("VOTACAO ENCERRADA...")
                          SENAO
                            ESCREVAL("VOTO INVALIDO!!!")
                        FIMSE
                    FIMSE
               FIMSE
           FIMSE
       FIMSE
   FIMSE
   
FIMENQUANTO
 
 TOTAL <- C1+C2+C3+C4+BRANCO
 ESCREVAL("CANDIDADO 1 : ",C1, " - ", C1/(TOTAL-BRANCO)*100:2:1,"%")
 ESCREVAL("CANDIDADO 2 : ",C2, " - ", C2/(TOTAL-BRANCO)*100:2:1,"%")
 ESCREVAL("CANDIDADO 3 : ",C3, " - ", C3/(TOTAL-BRANCO)*100:2:1,"%")
 ESCREVAL("CANDIDADO 4 : ",C4, " - ", C4/(TOTAL-BRANCO)*100:2:1,"%")
 ESCREVAL("TOTAL DE VOTOS : ", TOTAL)
 ESCREVAL("VOTOS EM BRANCO: ", BRANCO)


 SE C1 > C2 ENTAO
      SE C1 > C3 ENTAO
           SE C1 > C4 ENTAO
                REPRESENTANTE <- 1
              SENAO
                REPRESENTANTE <- 4
           FIMSE
         SENAO
           SE C3 > C4 ENTAO
                REPRESENTANTE <- 3
              SENAO
                REPRESENTANTE <- 4
           FIMSE
      FIMSE
    SENAO
      SE C2 > C3 ENTAO
           SE C2 > C4 ENTAO
                REPRESENTANTE <- 2
              SENAO
                REPRESENTANTE <- 4
           FIMSE
         SENAO
           SE C3 > C4 ENTAO
                REPRESENTANTE <- 3
              SENAO
                REPRESENTANTE <- 4
           FIMSE
      FIMSE
 FIMSE

 ESCREVAL("O NOVO REPRESENTANTE É O CANDIDATO : ", REPRESENTANTE)

 SE REPRESENTANTE = 1 ENTAO
      SE C2 > C3 ENTAO
           SE C2 > C4 ENTAO
                SUPLENTE <- 2
              SENAO
                SUPLENTE <- 4
           FIMSE
         SENAO
           SE C3 > C4 ENTAO
                SUPLENTE <- 3
              SENAO
                SUPLENTE <- 4
           FIMSE
      FIMSE
    SENAO
  // REPRESENTANTE 2
     SE REPRESENTANTE = 2 ENTAO
         SE C1 > C3 ENTAO
              SE C1 > C4 ENTAO
                   SUPLENTE <- 1
                 SENAO
                   SUPLENTE <- 4
              FIMSE
            SENAO
              SE C3 > C4 ENTAO
                   SUPLENTE <- 3
                 SENAO
                   SUPLENTE <- 4
              FIMSE
         FIMSE
       SENAO
     // REPRESENTANTE 3
      SE REPRESENTANTE = 3 ENTAO
         SE C1 > C2 ENTAO
              SE C1 > C4 ENTAO
                   SUPLENTE <- 1
                 SENAO
                   SUPLENTE <- 4
              FIMSE
            SENAO
              SE C2 > C4 ENTAO
                   SUPLENTE <- 2
                 SENAO
                   SUPLENTE <- 4
              FIMSE
         FIMSE
       SENAO
     // REPRESENTANTE 4
          SE C1 > C2 ENTAO
              SE C1 > C3 ENTAO
                   SUPLENTE <- 1
                 SENAO
                   SUPLENTE <- 3
              FIMSE
            SENAO
              SE C2 > C3 ENTAO
                   SUPLENTE <- 2
                 SENAO
                   SUPLENTE <- 3
              FIMSE
         FIMSE
     FIMSE
   FIMSE
 FIMSE

 ESCREVAL("O NOVO SUPLENTE É O CANDIDATO : ",SUPLENTE)

fimalgoritmo
