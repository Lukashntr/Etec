algoritmo "semnome"
// Função :
// Autor :
// Data : 11/11/2015
// Seção de Declarações 
var
   tabuada  : VETOR[1..5,1..10] DE REAL
   TAB : INTEIRO
   CON : INTEIRO
inicio
// Seção de Comandos 
 PARA TAB DE 1 ATE 10 FACA

    PARA CON DE 1 ATE 5 FACA
       TABUADA[CON,TAB] <- CON * TAB
       ESCREVA(CON:2, " X ", TAB:2, " = ",TABUADA[CON,TAB]:2,"  ")
    FIMPARA
    ESCREVAL
 FIMPARA

fimalgoritmo
