algoritmo "semnome"
// Função :
// Autor :
// Data : 18/11/2015
// Seção de Declarações
var

  vNomeCompleto : caracter
  vNome         : caracter
  vSobrenome    : caracter

inicio
// Seção de Comandos

  leia(vNomeCompleto)

  vNome      <- COPIA(vNomeCompleto, 1, pos(" ",vNomeCompleto)-1)
  vSobrenome <- COPIA(vNomeCompleto,pos(" ",vNomeCompleto)+1, compr(vNomeCompleto)-pos(" ",vNomeCompleto))

  Escreval("Nome.....: ",vNome)
  Escreval("Sobrenome: ",vSobrenome)

fimalgoritmo
