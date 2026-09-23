import decimal
import locale

locale.setlocale(locale.LC_ALL, 'pt_BR')


print('---------- BANCO 24 HRs ----------')

bank = str
nome = str
pais = str
cidade = str 
uf = str
inter = str
conta = float
senha = float
agencia = float
valor = float
RG = float
CPF = float
x = int

x = 0
while  x == 0: 
    bank = str(input(' INFORME O SEU BANCO: '))
    nome = str(input(' INFORME O SEU NOME: '))
    inter = str(input(' INFORME SE É INTERNACIONAL: (1)SIM OU (2)NÃO '))
    if inter != '1' and inter != '2':
        print('----------INFORME UMA CONDIÇÃO VALIDA----------')
        
    if inter =='1' or  inter =='2':

        if inter == '1': 

            print('----------BEM VINDO---------- ')
            pais = str(input(' INFORME O SEU PAIS '))
            uf = str(input(' INFORME O SEU ESTADO: '))
            cidade = str(input(' INFORME SUA CIDADE (MUNICIPIO): '))
            conta = float(input(' INFORME OS 4 (QUATRO) ULTIMOS NUMEROS DA SUA CONTA: '))
            agencia = float(input(' INFORME A SUA AGENCIA: '))
            RG = float(input(' INFORME O SEU RG: '))
            CPF = float(input(' INFORME O SEU CPF: '))

    
            print('-----------------------24 HRs-------------------------')
            print(' BEM VINDO AO SISTEMA INTERNACIONAL DO BANCO ', bank)
            print(' NOME ', nome)
            print(' PAIS ', pais)
            print(' UF: ', uf)
            print(' CIDADE: ', cidade)
            print(' RG: ', RG)
            print(' CPF: ', CPF)
            print(' CONTA: ', conta)
            print(' AGENCIA: ', agencia)
            print('---------------------COMPROVANTE-----------------------')

            senha = float(input(' INFORME A SENHA DA CONTA  '))

            if senha == 1234:

                valor = float(input(' INFORME O VALOR QUE DESEJA SACAR: '))

                if valor <= 500:
                    print(' SAQUE PERMITIDO ')
                    x = x + 1

                else :

                    print(' VALOR DO SAQUE NÃO PERMITIDO ')
                    x = x + 1
            else :
                print('  SENHA INCORETA TENTE NOVAMENTE MAIS TARDE ')
                x = x + 1

        elif inter == '2':

            print('----------BEM VINDO---------- ')
            uf = str(input(' INFORME O SEU ESTADO: '))
            cidade = str(input(' INFORME SUA CIDADE (MUNICIPIO): '))
            conta = float(input(' INFORME OS 4 (QUATRO) ULTIMOS NUMEROS DA SUA CONTA: '))
            agencia = float(input(' INFORME A SUA AGENCIA: '))
            RG = float(input(' INFORME O SEU RG: '))
            CPF = float(input(' INFORME O SEU CPF: '))

            print('-------------24 HRs--------------')
            print(' BEM VINDO AO BANCO ', bank)
            print(' NOME ', nome)
            print(' UF: ', uf)
            print(' CIDADE: ', cidade)
            print(' RG: ', RG)
            print(' CPF: ', CPF)
            print(' CONTA: ', conta)
            print(' AGENCIA: ', agencia)
            print('-----------COMPROVANTE----------------')

            senha = float(input(' INFORME A SENHA DA CONTA  '))

            if senha == 1234:

                valor = float(input(' INFORME O VALOR QUE DESEJA SACAR: '))

                if valor <= 500:
                    print(' SAQUE PERMITIDO ')
                    x = x + 1

                else :
                    print(' VALOR DO SAQUE NÃO PERMITIDO ')
                    x = x + 1
            else :
                print('  SENHA INCORETA TENTE NOVAMENTE MAIS TARDE ')
                x = x + 1