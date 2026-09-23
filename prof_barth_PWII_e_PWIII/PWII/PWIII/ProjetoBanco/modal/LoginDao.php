<?php

class LoginDao{

    public function verificarSenha(Login $objLogin) {

        $senha = $objLogin->getSenhalogin();
        // conexão com banco
        $dao = new ConnectDao();

        // cria variavel $conn que recebe a conexão por meio do objeto $dao
        $conn = $dao->connect();

        // realiza o processo de select no banco de dados
        try { //tentativa de select no banco de dados         
        $res = $conn->prepare("SELECT * FROM usuario WHERE senha LIKE '%$senha%' ");
            $res->execute();
     
            /* retorna todos resultados da pesquisa */
                
            $result = $res->fetchAll();
 
            // retorna  dados pesquisados
            return $result;

        }catch (Exception $e) {
            //echo "$e ERRO na class PessoaDao, metodo pesquisarPessoa() ";// erro de SQL Execute   
            return null;
            

        // fecha a conexão
         $dao->disconnect();
        }

    } // fechamneto do metodo verificarSenha

    public function verificarEmail(Login $objLogin) {
        
        $email = $objLogin->getEmaillogin();

        // conexão com banco
        $dao = new ConnectDao();

        // cria variavel $conn que recebe a conexão por meio do objeto $dao
        $conn = $dao->connect();

        // realiza o processo de select no banco de dados
        try { //tentativa de select no banco de dados         
        $res = $conn->prepare("SELECT * FROM usuario WHERE email LIKE '%$email%' ");
            $res->execute();
     
            /* retorna todos resultados da pesquisa */
                
            $result = $res->fetchAll();
 
            // retorna  dados pesquisados
            return $result;

        }catch (Exception $e) {
            //echo "$e ERRO na class PessoaDao, metodo pesquisarPessoa() ";// erro de SQL Execute   
            return null;
            
        // fecha a conexão
         $dao->disconnect();
        }

    } // fechamento do metodo verificaEmail  

} // fechamento da classe UsuarioDao