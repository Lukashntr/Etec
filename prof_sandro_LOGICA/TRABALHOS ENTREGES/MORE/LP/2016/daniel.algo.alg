algoritmo "calculadora"
// Função :  faser calculo matematico
// Autor :      daniel nunes
// Data : 23/09/2015
// Seção de Declarações
var
A:real
B:real
OP:caracter
RESULTADO:real
inicio
// Seção de Comandos
escreval("CALCULADORA")
escreval("escreva o primeiro digito")
leia(A)
escreval("escreva o segundo digito")
leia(B)
escreval ("escolha uma operação:")
escreval ("1 : adição")
escreval ("2 : subtração")
escreval ("3 : divisão")
escreval ("4 : multiplicação")
leia (OP)

SE (OP = "1") ENTAO
   RESULTADO <- A+B
SENAO
   SE (OP = "2") ENTAO
      RESULTADO <- A-B
   SENAO
      SE (OP = "3") ENTAO
         RESULTADO <- A*B

      SENAO
         SE (OP = "4") ENTAO
            SE B = 0 ENTAO
               ESCREVAL("OPERAÇÃO INVALIDA")
            SENAO
               RESULTADO <- A/B
            FIMSE
          SENAO
            ESCREVAL("OPERAÇÃO INVALIDA")
         FIMSE
      FIMSE
   FIMSE
FIMSE

ESCREVAL("O RESULTADO É : " ,RESULTADO)

fimalgoritmo
