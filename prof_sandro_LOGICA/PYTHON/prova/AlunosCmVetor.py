a = open('ListaAlunos2.txt', 'r')

#declaração dos vetores
rms = []
nomes = []
turmas = []
freque = []
classfs = []

#laço de repetição que acessa linha por linha
for x in a:
	#entrada de dados
	rm = x[0:5]
	nome = x[5:40]
	turma = x[40:41]
	freqTmp = x[42:47]
	#trocando as virgulas por pontos
	freq = freqTmp.replace(',','.')
	classf = ' '
	
	#processamento
	if float(freq) < 80.0:
		classf = 'Baixa'
	elif float(freq) < 90.0:
		classf = 'Media'
	else:
		classf = 'Alta'
		
	#entrada no vetor
	rms.append(rm)
	nomes.append(nome)
	turmas.append(turma)
	freque.append(freq)
	classfs.append(classf)

#saida da turma A
j = 0
while j < len(rms):
	if turmas[j] == 'A':
		print(rms[j], nomes[j], turmas[j],freque[j],classfs[j])
	j = j + 1

print('='*50)

#saida da turma b		
j = 0
while j < len(rms):
	if turmas[j] == 'B':
		print(rms[j], nomes[j], turmas[j],freque[j],classfs[j])
	j = j + 1

#fechar arquivo de texto				
a.close()