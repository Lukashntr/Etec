<?php

    include 'ConnectDao.php'; // importando a classe de conexão d=com banco de dados

    class UsuarioDao{

        public function inserirUsuario(Usuario $objUsuario){

            // conexão com banco
            $dao = new ConnectDao();

            // cria variavel $conn que recebe a conexão por meio do objeto $dao
            $conn = $dao->connect();

            //realiza o processo de insert no banco de dados
            try{ // tentativa de atribuição de dados no banco de dados 

                // variavel de inserçãpo de dados $insert
                $insert = $conn->prepare("INSERT INTO Usuario(nome, email, datanasc, cargo, senha)"
                ."VALUES(:nome, :email, :datanasc, :cargo, :senha)"); //inserindo dados na tabela no banco pessoa

                //inserindo dados no banco de dados 
                $insert->BindValue(":nome", $objUsuario->getNome());
                $insert->BindValue(":email", $objUsuario->getEmail());
                $insert->BindValue(":datanasc", $objUsuario->getData());
                $insert->BindValue(":cargo", $objUsuario->getCargo());
                $insert->BindValue(":senha", $objUsuario->getSenha());

                $insert->execute(); // executa a inserçãode dados
                $res = $conn->prepare(" SELECT * FROM usuario ");
                $res->execute();


                $result = $res->fetchAll();
 
                // retorna  dados pesquisados
                return $result;

            } catch (Exception $e) {
                //echo "$e ERRO na class PessoaDao, metodo inserirPessoa() ";
                //echo 'erro de inserção: ' . $e->getMessage();
                //devolve para o objPessoa o status de erro
                return 0;
            }

            $dao->disconnect();  //fecha conexão com o banco de dados

        }// fechamento do metodo inserir Usuario
        
        public function pesquisarUsuario() {

            // conexão com banco
            $dao = new ConnectDao();

            // cria variavel $conn que recebe a conexão por meio do objeto $dao
            $conn = $dao->connect();

            // realiza o processo de select no banco de dados
            try { //tentativa de select no banco de dados 
                
                $res = $conn->prepare(" SELECT * FROM usuario ");
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

        }// fechamento da metodo pesquisarUsuario

        public function excluirUsuario(Usuario $objUsuario) {

            // conexão com banco
            $dao = new ConnectDao();

            // cria variavel $conn que recebe a conexão por meio do objeto $dao
            $conn = $dao->connect();
    
            // realiza o processo de select no banco de dados
            try {

                // $res recebe o delete com o id para excluir o registro
                $res = $conn->prepare("DELETE FROM Usuario WHERE id = ". $objUsuario->getId().";"); 
                $res->execute();

                $res = $conn->prepare(" SELECT * FROM usuario ");
                $res->execute();

                $result = $res->fetchAll();
 
                // retorna  dados pesquisados
                return $result;

            } catch (Exception $e) {
                echo "$e ERRO na class UsuarioDao, metodo excluirUsuario() ";
                // erro de SQL Execute
                return null;
            }
    
            // fecha a conexão
            $dao->disconnect();
        }// fechamento da metodo excluirUsuario

        public function atualizarUsuario(Usuario $objUsuario, $id){

            // conexão com banco
            $dao = new ConnectDao();

            // cria variavel $conn que recebe a conexão por meio do objeto $dao
            $conn = $dao->connect();

            // realiza o processo de atualização no banco de dados
            try {

                // $res recebe o delete com o id para excluir o registro
                $res = $conn->prepare("UPDATE usuario SET nome = '".$objUsuario->getNome()."'
                                    ,email = '".$objUsuario->getEmail()."'
                                    ,datanasc = '".$objUsuario->getdata()."'
                                    ,cargo = '".$objUsuario->getCargo()."'
                                    ,senha = '".$objUsuario->getSenha()."' WHERE id = $id ;");
                $res->execute();

                $res = $conn->prepare(" SELECT * FROM usuario ");
                $res->execute();


                $result = $res->fetchAll();
 
                // retorna  dados pesquisados
                return $result;

            } catch (Exception $e) {
                echo "$e ERRO na class UsuarioDao, metodo atualizarUsuario() ";
                // erro de SQL Execute
                return null;
            }


        } // fechamento do metodo atualizarUsuario
        
        public function pesquisarUsuarioId(Usuario $objUsuario){

            // conexão com banco
            $dao = new ConnectDao();

            // cria variavel $conn que recebe a conexão por meio do objeto $dao
            $conn = $dao->connect();
     
             // realiza o processo de select no banco de dados apartir do ID 
             try { //tentativa de select no banco de dados para 
 
                 $res = $conn->prepare("SELECT * FROM Usuario WHERE id=". $objUsuario->getId().";");
                 $res->execute();
     
                 /* retorna todos resultados da pesquisa */
                 $resultId = $res->fetchAll();
 
                 // retorna  dados inseridos
                 return $resultId;
 
             } catch (Exception $e) {
                 echo "$e ERRO na class PessoaDao, metodo pesquisarPessoaId() ";
                 // erro de SQL Execute
                 return null;
             }
     
             // fecha a conexão
             $dao->disconnect();
             
      }// fechamento de metodo pesquisaPessoaId

    }// fechamento da classe UsuarioDao
