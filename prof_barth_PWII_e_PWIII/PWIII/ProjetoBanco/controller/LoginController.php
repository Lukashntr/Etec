<?php

include '../modal/UsuarioDao.php'; // importando bibliotecas
include '../modal/LoginDao.php';

class LoginController{

    // metodo para inserir o objPessoa com os dados para o banco
    public function verificaLogin(Login $objLogin){

        //validações 
        if ($objLogin->getEmaillogin() == '' || $objLogin->getEmaillogin() == null ||
            $objLogin->getSenhalogin() == '' || $objLogin->getSenhalogin() == null) { // verifica se o nome não foi preencido
            
            if(session_status() !== PHP_SESSION_ACTIVE){ // se não tem nenhuma sessão aberta 
            session_start(); //uma sessão ira se abrir
            }

            // Criando mensagem de alerta de erro caso o  nome não seja inserido 
            $_SESSION['status'] =" Email ou senha não inseridos"; 
            $_SESSION['css'] ='alert';  

            include '../view/login.php'; // controller devolve para view
            exit(); // Interrompe o fluxo de dados/ para as demais açoes não proceguirem

        } // fechamento do if de validação do nome 

        // chamar a classe de banco de dados e metodo de inserção
        $objLoginDao = new LoginDao(); // criando obj da classe LoginDao
        $retornoE = $objLoginDao->verificarEmail($objLogin); //variavel que recebe o resultado do metodo verificaLogin

        if($retornoE == null) {

            // verifica se a sessão ja esta aberta 
            if(session_status() !== PHP_SESSION_ACTIVE){
                session_start(); //se a sessão não estiver aberta sera criada uma sessão
            }
    
            // criando mensagem de alerta de sucesso 
            $_SESSION['status'] =" Email está incorreto "; 
            $_SESSION['css'] =' alert ';
    
            include '../view/login.php'; // controller devolve para view
            exit(); // Interrompe o fluxo de dados/ para as demais açoes não proceguirem
                        
        }
        
        foreach ($retornoE as $value){ // iterando e colocando os valores do banco nas variaveis 
            $emailof = $value['email'];
            $senhaof = $value['senha'];
        }
        /*
        foreach ($retornoS as $value){ // iterando e colocando os valores do banco nas variaveis 
            $senhaof = $value['senha'];
        }
        */

        if($emailof == $objLogin->getEmaillogin() && $senhaof == $objLogin->getSenhalogin()){
            
            $objUsuarioDao = new UsuarioDao();
            $retornoo = $objUsuarioDao->pesquisarUsuario(); 

            if($retornoo != null) {

                // verifica se a sessão ja esta aberta 
                if(session_status() !== PHP_SESSION_ACTIVE){
                    session_start(); //se a sessão não estiver aberta sera criada uma sessão
                }
        
                // criando mensagem de alerta de sucesso 
                $_SESSION['status'] =" Login efetuado com sucesso "; 
                $_SESSION['css'] =' alert ';
        
                include '../view/table.php'; // controller devolve para view
                exit(); // Interrompe o fluxo de dados/ para as demais açoes não proceguirem
                            
            }

        }
        else{
            // verifica se a sessão ja esta aberta 
            if(session_status() !== PHP_SESSION_ACTIVE){
            session_start(); //se a sessão não estiver aberta sera criada uma sessão
            }

            // criando mensagem de alerta de sucesso 
            $_SESSION['status'] =" Email e senha não correspondem "; 
            $_SESSION['css'] ='alert';

            include '../view/login.php'; // controller devolve para view
            exit(); // Interrompe o fluxo de dados/ para as demais açoes não proceguirem
        }

    } // fechamento do metodo verifica Login

} // fechamento da classe LoginController