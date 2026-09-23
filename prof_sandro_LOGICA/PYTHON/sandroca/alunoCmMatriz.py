a = open('Alunos.txt', 'r')

#declaração das matrizes
turmaA = []
turmaB = []

#laço de repetição que acessa linha por linha
for x in a:
	aluno = []	
	#entrada de dados e fatiamento de strings
	rm = x[0:5]
	nome = x[5:40]
	turma = x[40:41]
	freqTmp = x[42:47]
	#trocando as virgulas por pontos
	freq = freqTmp.replace(',','.')
	classf = ''
	
	#processamento
	if float(freq) < 80.0:
		classf = 'Baixa'
	elif float(freq) < 90.0:
		classf = 'Media'
	else:
		classf = 'Alta'
		
	#entrada no vetor do aluno
	aluno.append(rm)
	aluno.append(nome)
	aluno.append(turma)
	aluno.append(freq)
	aluno.append(classf)
	
	#verificação se é da turma A ou da B 
	if turma == 'A':
		#inclusão na matriz A
		turmaA.append(aluno)
	if turma == 'B':
		#inclusão na matriz B
		turmaB.append(aluno)

#saida da turma A
j = 0
while j < len(turmaA):
	print(turmaA[j][0]
	+turmaA[j][1]
	+ turmaA[j][2]
	+ turmaA[j][3]
	+ ' '  + turmaA[j][4])
	j = j + 1

print('='*52)

#saida da turma b	
j = 0
while j < len(turmaB):
	print(turmaB[j][0]
	+turmaB[j][1]
	+ turmaB[j][2]
	+ turmaB[j][3]
	+ ' '  + turmaB[j][4])
	j = j + 1


#fechar arquivo de texto				
a.close()