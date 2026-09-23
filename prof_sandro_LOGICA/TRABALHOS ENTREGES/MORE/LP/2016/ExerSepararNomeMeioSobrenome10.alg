algoritmo "semnome"
// Função :
// Autor :
// Data : 18/11/2015
// Seção de Declarações
var

  vNomeCompleto : vetor[1..5] de caracter
  vNome         : caracter
  vNomeMeio     : caracter
  vSobrenome    : caracter
  vAuxiliar     : caracter
  vcont         : inteiro
  vcont2        : inteiro

inicio
// Seção de Comandos

  Enquanto vcont < 5 faca
    vcont <- vcont + 1
    leia(vNomeCompleto[vcont])
  Fimenquanto

  para vcont2 de 1 ate 5 faca
     vNome      <- COPIA(vNomeCompleto[vcont2], 1, pos(" ",vNomeCompleto[vcont2])-1)
     vAuxiliar  <- COPIA(vNomeCompleto[vcont2],pos(" ",vNomeCompleto[vcont2])+1, compr(vNomeCompleto[vcont2])-pos(" ",vNomeCompleto[vcont2]))
     vNomeMeio  <- COPIA(vAuxiliar, 1, pos(" ",vAuxiliar)-1)
     vSobrenome <- COPIA(vAuxiliar,pos(" ",vAuxiliar)+1, compr(vAuxiliar)-pos(" ",vAuxiliar))

     Escreval("Nome.....: ",vNome)
     Escreval("Nome Meio: ",vNomeMeio)
     Escreval("Sobrenome: ",vSobrenome)
     Escreval
  fimpara

fimalgoritmo
