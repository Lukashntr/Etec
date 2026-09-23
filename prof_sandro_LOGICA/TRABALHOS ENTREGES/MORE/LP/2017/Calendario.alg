algoritmo "semnome"
var
cont_diasmes   : inteiro
cont_diassemana: inteiro
cont_semana    : inteiro
 dias: inteiro
 mes : caracter
 diaSemana: inteiro
 cont_diasEmBranco: inteiro
 calendario : vetor [1..6,1..7] de inteiro
 diaAtual : inteiro
 dataAtual: caracter
inicio
 ESCREVA("INFORME O NOME DO MÊS.........: ")
 leia(mes)
 ESCREVA("INFORME A QTDE DE DIAS DO MÊS.: ")
 leia(dias)
 ESCREVA("INFORME O DIA DA SEMANA.......: ")
 leia(diaSemana)
 ESCREVA("INFORME A DATA CORRENTE.......: ")
 leia(dataAtual)
 diaAtual <- caracpnum(copia(dataAtual,1,2))
 
 cont_diassemana <- diaSemana
 cont_semana <- 1
 para cont_diasEmBranco de 1 ate diaSemana - 1 faca
   ESCREVA(" - ")
 fimpara
 para cont_diasmes de 1 ate dias faca
    SE cont_diasmes = diaAtual ENTAO
      ESCREVA(" X ")
    SENAO
      ESCREVA(cont_diasmes:2, " ")
    FIMSE
    calendario[cont_semana,cont_diassemana] <- cont_diasmes
    SE cont_diassemana = 7 ENTAO
       ESCREVAL
       cont_semana <- cont_semana + 1
       cont_diassemana <- 1
     SENAO
       cont_diassemana <- cont_diassemana + 1
    FIMSE
 fimpara
 
 
fimalgoritmo
