function validar(){
    var nome = formulario.nome.value;
    var email = formulario.email.value;
    var data = formulario.data.value;
    var cidade = formulario.cidade.cidade;
    var sexo = formulario.sexo.value;
    var senha = formulario.senha.value;
    var confirmar = formulario.senha.value;

    /* Linhas de condições */

    if(nome == ""){
        alert(" Preencha o campo nome ")
        formulario.nome.focus();
        return false;
    }
    else if(email == ""){
        alert(" Preencha o campo e-mail ")
        formulario.email.focus();
        return false;
    }
    else if(data == ""){
        alert(" Preencha o campo data ")
        formulario.data.focus();
        return false;
    }
    else if(cidade == ""){
        alert(" Preencha o campo cidade  ")
        formulario.cidade.focus();
        return false;
    }
    else if(sexo == ""){
        alert(" Preencha o campo sexo ")
        formulario.sexo.focus();
        return false;
    }
    else if(senha == ""){
        alert(" Preencha o campo senha ")
        formulario.senha.focus();
        return false;
    }
    else if(confirmar == ""){
        alert(" Preencha o campo confirmar senha ")
        formulario.confirmar.focus();
        return false;
    }
    else{
        alert(" CONTA CRIADA COM SUCESSO ")
    }
}
function proxima(){
    var win = window.open ('popup.html', 'popup')
}