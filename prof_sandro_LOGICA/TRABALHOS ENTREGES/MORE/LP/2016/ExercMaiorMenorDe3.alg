algoritmo "semnome"
// Função :
// Autor :
// Data : 31/08/2015
// Seção de Declarações 
var
  A : INTEIRO
  B : INTEIRO
  C : INTEIRO
inicio
// Seção de Comandos 
	ESCREVAL("ENTRE COM 3 NUMEROS")
	LEIA(A)
	LEIA(B)
	lEIA(C)
	SE (A = B) ENTAO
		SE (B = C) ENTAO
				ESCREVA("OS 3 NUMEROS SAO IGUAIS")
			SENAO
			SE (B > C) ENTAO
					ESCREVAL("MAIOR = ",B)
					ESCREVAL("MENOR = ",C)
				SENAO
					ESCREVAL("MAIOR = ",C)
					ESCREVAL("MENOR = ",B)
			FIMSE	
		FIMSE
		SENAO
		SE (B = C) ENTAO
			SE (B > A) ENTAO
					ESCREVAL("MAIOR = ", B)
					ESCREVAL("MENOR = ", A)
				SENAO
					ESCREVAL("MAIOR = ",A)
					ESCREVAL("MENOR = ",B)
			FIMSE
			SENAO
			SE (A > B) ENTAO
				SE (B>C) ENTAO
						ESCREVAL("MAIOR = ",A)
						ESCREVAL("MENOR = ",C)
					SENAO
					SE (A>C) ENTAO
							ESCREVAL("MAIOR = ", A)
							ESCREVAL("MENOR = ", B)
						SENAO
							ESCREVAL("MAIOR = ", C)
							ESCREVAL("MENOR = ", B)
					FIMSE
				FIMSE
				SENAO
				SE (B>C) ENTAO
					SE (A>C) ENTAO
							ESCREVAL("MAIOR = ",B)
							ESCREVAL("MENOR = ",C)
						SENAO
							ESCREVAL("MAIOR = ",B)
							ESCREVAL("MENOR = ",A)
					FIMSE
					SENAO
						ESCREVAL("MAIOR = ",C)
						ESCREVAL("MENOR = ",A)
				FIMSE
			FIMSE
		FIMSE
	FIMSE
fimalgoritmo
