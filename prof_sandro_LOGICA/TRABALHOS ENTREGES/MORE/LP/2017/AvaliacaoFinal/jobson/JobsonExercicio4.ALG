algoritmo "semnome"
// Função :
// Autor :
// Data : 20/06/2017
// Seção de Declarações
var
V:vetor[1..5 , 1..2] de inteiro
D , S , C : inteiro
inicio
Escreval ("Os Dias da semana estão representados no formato abaixo :")
escreval ()
escreval ("Domingo = 1, Segunda = 2 Terça = 3 Quarta = 4 ")
escreval        (" Quinta = 5 Sexta = 6 Sabádo = 7")
escreval ("_____________________________________________")
escreval()

para D de 1 ate 5 faca
     para S de 1 ate 2 faca
     escreva("Digite os dias do mês  e depois os dias da semana[", D, ",", S, "]:")
       leia(V [ D , S])
     fimpara
fimpara
       para D de 1 ate 5 faca
       para S de 1 ate 2 faca

       escreva (v[D,S]:10)

  fimpara
        escreva("     Dias da Semana")
      escreval()
   fimpara
   ESCREVAL()
   
   para D de 1 ate 5 faca

   se (V[ D , 1]>=31)entao

      ESCREVAL ("Dia Invalido:  ", D:2)
    senao
    se(V[D , 1]<1) entao

      ESCREVAL ("Dia Invalido:    ", D :2)
    senao
    se V[D, 1]>20 entao

       ESCREVAL ("fim do mês:      ",D:2)
    senao
    se V[D , 1]>10 entao

        ESCREVAL ("meio do Mês:   ", D:4)
       
     senao

      ESCREVAL ("Inicio do mês:    ",D:5)

   fimse
   fimse
   fimse
   fimse
   fimpara
   


fimalgoritmo

fimalgoritmo
     

