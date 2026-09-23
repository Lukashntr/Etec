def idadeCompleta(dataN):
    vetidade = []
    hoje = datetime.today().date()
    dt_nascimento = datetime.strptime(dt_nascimento, "%d/%m/%Y")
    dt_nascimento = dt_nascimento.date()
    idade = (hoje.year - dt_nascimento.year)
    #calculo do anos
    if (dt_nascimento.month > hoje.month):
        idade = idade - 1
    elif (hoje.month == dt_nascimento.month and dt_nascimento.day):
        idade = idade - 1 
    #calculo de messes
    if dt_nascimento.month > hoje.month:
        messes = 12 - dt_nascimento.month + hoje.month - 1
    elif dt_nascimento.month == hoje.month:
        messes = hoje.month - dt_nascimento.month
    else:
        messes = hoje.month - dt_nascimento.month
    #calculo dos dias
    if dt_nascimento.day > hoje.day:
        dias = 30 - dt_nascimento + hoje.day
    else:
        dias = hoje.day - dt_nascimento.day
        
    vetidade.append(idade)
    vetidade.append(messes)
    vetidade.append(dias)
    return vetidade
        
    