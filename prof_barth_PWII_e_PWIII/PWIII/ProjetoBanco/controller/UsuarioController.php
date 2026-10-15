<?php

include '../modal/UsuarioDao.php'; // importando bibliotecas 

class UsuarioController{

// metodo para inserir o objPessoa com os dados para o banco
public function inserirUsuario(Usuario $objUsuario){

    //validações 
    if ($objUsuario->getNome() == '' || $objUsuario->getNome() == null){ // verifica se o nome não foi preencido
         
        if(session_status() !== PHP_SESSION_ACTIVE){ // se não tem nenhuma sessão aberta 
           session_start(); //uma sessão ira se abrir
        }

        // Criando mensagem de alerta de erro caso o  nome não seja inserido 
        $_SESSION['status'] =" Digite o nome "; 
        $_SESSION['css'] ='alert';  

        include '../view/cadastro.php'; // controller devolve para view
        exit(); // Interrompe o fluxo de dados/ para as demais açoes não proceguirem

    } // fechamento do if de validação do nome 

    // chamar a classe de banco de dados e metodo de inserção
    $objUsuarioDao = new UsuarioDao(); // criando obj da classe PessoaDao
    $retornoo = $objUsuarioDao->inserirUsuario($objUsuario); //variavel que recebe o resultado do metodo inserirPessoa

    if($retornoo != null){

        // verifica se a sessão ja esta aberta 
        if(session_status() !== PHP_SESSION_ACTIVE){
           session_start(); //se a sessão não estiver aberta sera criada uma sessão
        }

        // criando mensagem de alerta de sucesso 
        $_SESSION['status'] = " Dados inseridos com sucesso "; 
        $_SESSION['css'] = 'cssinsert' ;

        include '../view/table.php'; // controller devolve para view
        exit(); // Interrompe o fluxo de dados/ para as demais açoes não proceguirem
    }
    else
    {
        // verifica se a sessão ja esta aberta 
        if(session_status() !== PHP_SESSION_ACTIVE){
           session_start(); //se a sessão não estiver aberta sera criada uma sessão
        }

        // criando mensagem de alerta de sucesso 
        $_SESSION['status'] =" Dados não foram inseridos "; 
        $_SESSION['css'] ='alert';

        include '../view/table.php'; // controller devolve para view
        exit(); // Interrompe o fluxo de dados/ para as demais açoes não proceguirem
    }

}// fechamento do metodo inserirPessoa

public function excluirUsuario(Usuario $objUsuario){

    // chama a classe do banco de dados o metodo de inserção
    $objUsu = new UsuarioDao();
    $retornoo = $objUsu->excluirUsuario($objUsuario);

    // verifica o resultado $delete, se o dado foi excluido retorna ok 
    // senão retorna erro
    if(isset($retornoo)){ // em caso de ok

        // verificar a sessão não esta aberta 
        if(session_status() !== PHP_SESSION_ACTIVE){
            session_start();
        }

        // criando variavel de sessão para delete com sucesso
        $_SESSION['status'] = 'Dado foi excluido com sucesso !';
        $_SESSION['css'] = 'cssdelete';
        include '../view/table.php';
        exit();

    } else { // em caso de erro 
        
        // verificar a sessão não esta aberta 
        if(session_status() !== PHP_SESSION_ACTIVE){
            session_start();
        }

        // criando variavel de sessão em caso de erro da tentativa de excluir registro
        $_SESSION['erroDelete'] = "Erro: Não foi possivel excluir o dado! ";
        include '../view/table.php';
        exit();
        
    }

}// fechamento dometodo de excluirPessoa 

public function atualizarUsuario(Usuario $objUsuario, $id){
    
    // chama a classe do banco de dados o metodo de inserção
    $objPes = new UsuarioDao();

    $retornoo = $objPes->atualizarUsuario($objUsuario, $id);

    // verifica o resultado $update, se o dado foi atualizado retorna ok 
    // senão retorna erro
    if(isset($retornoo)){ // em caso de ok

        // verificar a sessão não esta aberta 
        if(session_status() !== PHP_SESSION_ACTIVE){
            session_start();
        }

        // criando variavel de sessão com a atualização.
        $_SESSION['status'] = 'Dado foi atualizado com sucesso! ';
        $_SESSION['css'] = 'cssupgrade';
        
        include '../view/table.php';
        exit();

    } else { // em caso de erro 
        
        // verificar a sessão não esta aberta 
        if(session_status() !== PHP_SESSION_ACTIVE){
            session_start();
        }
        $_SESSION['erroUpgrade'] = "Erro: Não foi possivel Atualizar o dado! ";
        include '../view/table.php';
        exit();
    }

}// fechamento do metodo atualizarPessoa

public function atualizarUsuarioId(Usuario $objid){
    
    // chama a classe do banco de dados o metodo de inserção
    $objPes = new UsuarioDao();
    
    // chamando metodo da classe PessoaDao e passando os parametros
    $upgrade_pesquisa = $objPes->pesquisarUsuarioId($objid);

    // verifica o resultado $update, se o dado foi atualizado retorna ok 
    // senão retorna erro
    if(isset($upgrade_pesquisa)){ // em caso de ok

        // verificar a sessão não esta aberta 
        if(session_status() !== PHP_SESSION_ACTIVE){
            session_start();
        }

        // criando variavel de sessão com dados do usuario a ser atualizado 
        $_SESSION['upgrade_pesquisa'] = $upgrade_pesquisa;
        include '../view/atualizar.php';
        exit();

    } else { // em caso de erro 
        
        // verificar a sessão não esta aberta 
        if(session_status() !== PHP_SESSION_ACTIVE){
            session_start();
        }
        $_SESSION['erro_upgrade_pesquisa'] = "Erro: Não foi possivel Atualizar o dado! ";
        include '../view/upgrade.php';
        exit();
    }

}// fechamento do metodo atualizarPessoa

} // fechamemto da classe PessoaController
