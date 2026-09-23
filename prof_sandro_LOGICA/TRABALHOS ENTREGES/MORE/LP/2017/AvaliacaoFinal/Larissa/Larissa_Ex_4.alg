algoritmo "semnome"
// Função :
// Autor :
// Data : 20/06/2017
// Seção de Declarações
var
Matriz: vetor[1..5,1..2] de inteiro
L,C:inteiro

VC: vetor[1..5] de caractere
vContC: inteiro

DiaInvalido: caractere
InidoMes:caractere
MeiodoMes:caractere
Fimdomes:caractere

inicio
// Seção de Comandos
DiaInvalido<-("Dia Inválido")
IniDoMes<-("Inicio do mês")
MeiodoMes<-("Meio do mês")
Fimdomes<- ("Fim do Mês")


Escreval("Digite quais os dias 5 do mês que quer armazenar e logo após o dia da semana que cada um cai e veja a classificação ;D")

   para C de 1 ate 2 faca
        para L de 1 ate 5 faca
             leia(matriz[l,c])

        fimpara
        Escreval("----------------------------------------------")

   fimpara

           se matriz [1,1] > 32 entao
          VC[1] <-DiaInvalido
           fimse
           

           se (matriz [1,1] >=21) e  (matriz [2,1]<=31) entao
          VC[1] <-FimdoMes
           fimse
          
           se (matriz [1,1] >=11) e  (matriz [2,1]<=20) entao
          VC[1] <-MeiodoMes
           fimse
           
            se (matriz [1,1] >=1) e  (matriz [2,1]<=10) entao
          VC[1] <-InidoMes
           fimse
           
           

         se matriz [2,1] > 32 entao
          VC[2] <-DiaInvalido
           fimse


           se (matriz [2,1] >=21) e  (matriz [2,1]<=31) entao
          VC[2] <-FimdoMes
           fimse

           se (matriz [2,1] >=11) e  (matriz [2,1]<=20) entao
          VC[2] <-MeiodoMes
           fimse

            se (matriz [2,1] >=1) e  (matriz [2,1]<=10) entao
          VC[2] <-InidoMes
           fimse
           
           
           
           
           
               se matriz [3,1] > 32 entao
          VC[3] <-DiaInvalido
           fimse


           se (matriz [3,1] >=21) e  (matriz [3,1]<=31) entao
          VC[2] <-FimdoMes
           fimse

           se (matriz [3,1] >=11) e  (matriz [3,1]<=20) entao
          VC[3] <-MeiodoMes
           fimse

            se (matriz [3,1] >=1) e  (matriz [3,1]<=10) entao
          VC[3] <-InidoMes
           fimse
           
           
           
           
           
             se matriz [4,1] > 32 entao
          VC[4] <-DiaInvalido
           fimse


           se (matriz [4,1] >=21) e  (matriz [4,1]<=31) entao
          VC[4] <-FimdoMes
           fimse

           se (matriz [4,1] >=11) e  (matriz [4,1]<=20) entao
          VC[4] <-MeiodoMes
           fimse

            se (matriz [4,1] >=1) e  (matriz [4,1]<=10) entao
          VC[4] <-InidoMes
           fimse
           
           
           
           
             se matriz [5,1] > 32 entao
          VC[5] <-DiaInvalido
           fimse


           se (matriz [5,1] >=21) e  (matriz [5,1]<=31) entao
          VC[5] <-FimdoMes
           fimse

           se (matriz [5,1] >=11) e  (matriz [5,1]<=20) entao
          VC[5] <-MeiodoMes
           fimse

            se (matriz [5,1] >=1) e  (matriz [5,1]<=10) entao
          VC[5] <-InidoMes
           fimse
           
           



           

fimalgoritmo

