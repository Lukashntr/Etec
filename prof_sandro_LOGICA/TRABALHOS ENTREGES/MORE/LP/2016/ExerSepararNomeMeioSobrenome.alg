algoritmo "semnome"
// Função :
// Autor :
// Data : 18/11/2015
// Seção de Declarações
var

  vNomeCompleto : caracter
  vNome         : caracter
  vNomeMeio     : caracter
  vSobrenome    : caracter
  vAuxiliar     : caracter

inicio
// Seção de Comandos

  leia(vNomeCompleto)

  vNome      <- COPIA(vNomeCompleto, 1, pos(" ",vNomeCompleto)-1)
  vAuxiliar  <- COPIA(vNomeCompleto,pos(" ",vNomeCompleto)+1, compr(vNomeCompleto)-pos(" ",vNomeCompleto))
  vNomeMeio  <- COPIA(vAuxiliar, 1, pos(" ",vAuxiliar)-1)
  vSobrenome <- COPIA(vAuxiliar,pos(" ",vAuxiliar)+1, compr(vAuxiliar)-pos(" ",vAuxiliar))

  Escreval("Nome.....: ",vNome)
  Escreval("Nome Meio: ",vNomeMeio)
  Escreval("Sobrenome: ",vSobrenome)

fimalgoritmo
