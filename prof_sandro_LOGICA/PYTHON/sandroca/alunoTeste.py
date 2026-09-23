from idade import idadeSimples, idadeCompleta
dtn = input("Informe a data de nascimento <dd/mm/aaaa> : ")
idade = idadeSimples(dtn)
print(idade, "anos")
print('-'*20)
idade2 = idadeCompleta(dtn)
print("{0:1d} anos, {1:1d} meses e {2:1d} dias".format(idade2[0], idade2[1], idade2[2]))