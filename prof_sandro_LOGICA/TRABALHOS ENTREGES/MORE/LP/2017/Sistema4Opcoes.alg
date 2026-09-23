algoritmo "semnome"
// Função :
// Autor :
// Data : 29/05/2017
// Seção de Declarações 
var

vOpcao : inteiro
vAluno : vetor [1..5,1..3]de caracter
vContAluno : inteiro
vAlunoAltera: inteiro
vContLista : inteiro
vContCampo : inteiro
vTempo     : caracter

inicio
// Seção de Comandos 

enquanto vOpcao < 4 faca

   Escreval("Entre com a opção desejada:")
   Escreval
   Escreval("1 - Cadastrar")
   Escreval("2 - Alterar")
   Escreval("3 - Listar")
   Escreval("4 - Sair")
   Escreval
   Escreva("Opção: ")
   leia(vOpcao)

   escolha vOpcao
     caso 1
        limpaTela
        vContAluno <- vContAluno + 1
        escreval("Cadastro de aluno")
        escreval
        escreval("N - ",vContAluno)
        escreva("Nome....:")
        leia(vAluno[vContAluno,1])
        escreva("Telefone:")
        leia(vAluno[vContAluno,2])
        escreva("Endereco:")
        leia(vAluno[vContAluno,3])

     caso 2
        limpaTela
        escreval("Alterar aluno")
        escreval
        escreva("Qual aluno você deseja alterar? ")
        leia(vAlunoAltera)
        escreval
        escreva("Nome....:")
        leia(vAluno[vAlunoAltera,1])
        escreva("Telefone:")
        leia(vAluno[vAlunoAltera,2])
        escreva("Endereco:")
        leia(vAluno[vAlunoAltera,3])
        
     caso 3
        limpatela
        escreval("Listar alunos")
        escreval
        para vContLista de 1 ate vContAluno faca
           Escreval
           Escreva(vContLista, " - ")
           para vContCampo de 1 ate 3 faca
              Escreva(vAluno[vContLista,vContCampo]:20)
           fimpara
        fimpara
        escreval
        escreval
        escreval("Pressione enter para sair...")
        leia(vTempo)
     outrocaso
     
   fimescolha
   limpatela
fimenquanto

fimalgoritmo
