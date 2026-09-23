algoritmo "semnome"
// Função :
// Autor :
// Data : 09/11/2015
// Seção de Declarações 
var
 manha_total            : inteiro
 manha_masculino        : inteiro
 manha_feminino         : inteiro
 manha_maior_masculino  : inteiro
 manha_menor_masculino  : inteiro
 manha_maior_feminino   : inteiro
 manha_menor_feminino   : inteiro
 
 tarde_total            : inteiro
 tarde_masculino        : inteiro
 tarde_feminino         : inteiro
 tarde_maior_masculino  : inteiro
 tarde_menor_masculino  : inteiro
 tarde_maior_feminino   : inteiro
 tarde_menor_feminino   : inteiro
 
 noite_total            : inteiro
 noite_masculino        : inteiro
 noite_feminino         : inteiro
 noite_maior_masculino  : inteiro
 noite_menor_masculino  : inteiro
 noite_maior_feminino   : inteiro
 noite_menor_feminino   : inteiro
 
 periodo                : caracter
 sexo                   : caracter
 idade                  : inteiro
 
 vcontinua              : caracter
 
inicio
// Seção de Comandos

ENQUANTO VCONTINUA <> "N" FACA

   escreva("Informe o período M/T/N: ")
   leia(periodo)
   escreva("Informe o Sexo - M/F   : ")
   leia(sexo)
   escreva("Informe a idade - NN   : ")
   leia(idade)
   
   ESCREVA("DESEJA CONTINUAR - S/N : ")
   leia(vcontinua)
   
   SE PERIODO = "M" ENTAO
       MANHA_TOTAL <- MANHA_TOTAL + 1
       SE SEXO = "M" ENTAO
           MANHA_MASCULINO <- MANHA_MASCULINO + 1
           SE IDADE > 17 ENTAO
               MANHA_MAIOR_MASCULINO <- MANHA_MAIOR_MASCULINO + 1
             SENAO
               MANHA_MENOR_MASCULINO <- MANHA_MENOR_MASCULINO + 1
           FIMSE
         SENAO
           MANHA_FEMININO  <- MANHA_FEMININO + 1
           SE IDADE > 17 ENTAO
               MANHA_MAIOR_FEMININO <- MANHA_MAIOR_FEMININO + 1
             SENAO
               MANHA_MENOR_FEMININO <- MANHA_MENOR_FEMININO + 1
           FIMSE
       FIMSE
     SENAO
       SE PERIODO = "T" ENTAO
           TARDE_TOTAL <- TARDE_TOTAL + 1
           SE SEXO = "M" ENTAO
              TARDE_MASCULINO <- TARDE_MASCULINO + 1
              SE IDADE > 17 ENTAO
                  TARDE_MAIOR_MASCULINO <- TARDE_MAIOR_MASCULINO + 1
                SENAO
                  TARDE_MENOR_MASCULINO <- TARDE_MENOR_MASCULINO + 1
              FIMSE
            SENAO
              TARDE_FEMININO  <- TARDE_FEMININO + 1
              SE IDADE > 17 ENTAO
                  TARDE_MAIOR_FEMININO <- TARDE_MAIOR_FEMININO + 1
                SENAO
                  TARDE_MENOR_FEMININO <- TARDE_MENOR_FEMININO + 1
              FIMSE
           FIMSE
         SENAO
           NOITE_TOTAL <- NOITE_TOTAL + 1
           SE SEXO = "M" ENTAO
              NOITE_MASCULINO <- NOITE_MASCULINO + 1
              SE IDADE > 17 ENTAO
                  NOITE_MAIOR_MASCULINO <- NOITE_MAIOR_MASCULINO + 1
                SENAO
                  NOITE_MENOR_MASCULINO <- NOITE_MENOR_MASCULINO + 1
              FIMSE
            SENAO
              NOITE_FEMININO  <- NOITE_FEMININO + 1
               SE IDADE > 17 ENTAO
                  NOITE_MAIOR_FEMININO <- NOITE_MAIOR_FEMININO + 1
                SENAO
                  NOITE_MENOR_FEMININO <- NOITE_MENOR_FEMININO + 1
              FIMSE
           FIMSE
       FIMSE
   FIMSE

FIMENQUANTO

LIMPATELA
ESCREVAL("RESULTADO DA PESQUISA")
ESCREVAL
ESCREVAl("- PERIODO MANHA   : ", manha_total)
ESCREVAl("  - SEXO MASCULINO: ", manha_masculino)
ESCREVAl("    - MAIORES     : ", manha_maior_masculino)
ESCREVAl("    - MENORES     : ", manha_menor_masculino)
ESCREVAl("  - SEXO FEMININO : ", manha_feminino)
ESCREVAl("    - MAIORES     : ", manha_maior_feminino)
ESCREVAL("    - MENORES     : ", manha_menor_feminino)
ESCREVAL
ESCREVAL("- PERIODO TARDE   : ", tarde_total)
ESCREVAL("  - SEXO MASCULINO: ", tarde_masculino)
ESCREVAL("    - MAIORES     : ", tarde_maior_masculino)
ESCREVAL("    - MENORES     : ", tarde_menor_masculino)
ESCREVAL("  - SEXO FEMININO : ", tarde_feminino)
ESCREVAL("    - MAIORES     : ", tarde_maior_feminino)
ESCREVAL("    - MENORES     : ", tarde_menor_feminino)
ESCREVAL
ESCREVAL("- PERIODO NOITE   : ", noite_total)
ESCREVAL("  - SEXO MASCULINO: ", noite_masculino)
ESCREVAL("    - MAIORES     : ", noite_maior_masculino)
ESCREVAL("    - MENORES     : ", noite_menor_masculino)
ESCREVAL("  - SEXO FEMININO : ", noite_feminino)
ESCREVAL("    - MAIORES     : ", noite_maior_feminino)
ESCREVAL("    - MENORES     : ", noite_menor_feminino)
 
fimalgoritmo
