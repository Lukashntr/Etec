<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="../cs/tabeladados.css">
        <title> Pequisa Registros </title>
        <script> // metodo 
            function post_to_url(path, params, method){
                method = method || "post"; //default: POST

                var form = document.createElement("form");

                form._submit_function_ = form.submit;

                form.setAttibute("method", method);
                form.setAttibute("action", path);

                for (var key in params){
                    var hiddenField = document.createElemente("input");
                    hiddenField.setAttribute("type", "hidden");
                    hiddenField.setAttribute("name", key);
                    hiddenField.setAttribute("value", params[key]);

                    form.appedChild(hiddenField);
                }

                document.body.appendChield(form);
                form._submit_function_();
            }
        </script>
        <style>
            .container{
                margin: 0 auto;
                text-align: center;
                font-family: cursive;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
            }
            .header{
                background-color: grey;
                width: 100%;
                display: flex;
                flex-direction: row;
                align-items: center;
                justify-content: center;
                padding: 9px;
            }
            .label_header{
                color: white;
                font-size: 25px;
            }
            .imgGrande{
                width: 26px;
                height: 26px;
            }
            .table_{
                width: 100%;
                background-color: grey;
                color: white;
            }
            .tr_{
                display: flex;
                flex-direction: row;
                align-items: center;
                justify-content: space-around;
            }
            .td_{
                width: 100%;
                align-items: center;
                text-align: center;
                margin: 5px;
            }
            .btn{
                margin: 5px;
                color: white;
                background-color: #0080ff;
                border-radius: 10px;
                border: solid 1px #0080ff;
                padding: 5px;
                font-family: cursive;
                font-size: 17px;
            }
            .table_cabecalho{
                width: 100%;
                background-color: #0080ff;
                color: white;
                border: solid 1px #0080ff;
            }
            .tr_cabecalho{
                display: flex;
                flex-direction: row;
                align-items: center;
                justify-content: space-around;
            }
            .td_cabecalho{
                width: 100%;
                text-align: center;
            }
            .td_acao{
                display: flex;
                justify-content: row;
            }
            .alink_{
                text-decoration: none;
                color: white;
                border-radius: 10px;
            }
            .alink_up{
                background-color: green;
            }
            .alink_del{
                background-color: red;
            }
            .footer{
                display: flex;
            }
            .div_footer{
                display: flex;
                flex-direction: row;
                align-items: center;
                justify-content: center;
                margin: 5px;
            }
            .img{
                width: 16px;
                height: 16px;
            }
            a{
                text-decoration: none;
                color: #0080ff;
                width: 100%;
            }
            .alertok{
                display: flex;
                flex-direction: row;
                align-items: center;
                justify-content: center;
                width: 100%;
                margin-bottom: 2px;
            }
            .alert{
                background-color: #0080ff;
                color: white;
                padding: 10px;
                font-size: 24px;
                width: 100%;
            }
            .cssupgrade{
                background-color:  green;
                color: white;
                padding: 10px;
                font-size: 24px;
                width: 100%;
            }
            .cssinsert{
                background-color: green;
                color: white;
                padding: 10px;
                font-size: 24px;
                width: 100%;
            }
            .cssdelete{
                background-color: green;
                color: white;
                padding: 10px;
                font-size: 24px;
                width: 100%;
            }
        </style>

    </head>

    <body class="container" >

        <?php // codigo do alerta de erro e sucesso

        // verifica se a sessão ja não esta aberta 
        // se não estiver aberta, a sessão sera aberta 

        if(session_status() !== PHP_SESSION_ACTIVE){
            session_start(); //uma sessão ira se abrir
        }

        // if que cria a div de alerta
        if (isset($_SESSION['status'])) { // se $_SESSION['status'] contem valor, ira ser criada uma div id="alertOk"

        ?>

        <div class="alertok"><!-- div do alerta  -->
            <div class="<?php echo $_SESSION['css']; ?>" > <!--esta sendo passada a class css que contem o valor = 'alert' uma classe atribuida no css-->

                <?php echo $_SESSION['status']; // sera mostrada a mensagem dentro do alert ?> 
                <span class="closebtn" onclick="fecharBtn();" > &times; </span><!-- Criando botão que chama o metodo em js para fechar  alerta -->

            </div>
            <div class='header'>
                <label class='label_header'> USUARIOS REGISTRADOS </label>
            </div>
        </div>

        <?php
        } // fechamento do if de criação da div 
        
        // criar relatorio 

        // verificando se a sessão esta aberta caso não estiver ela irá se abrir!
        if(isset($retornoo)){
            if(session_status() !== PHP_SESSION_ACTIVE){
            session_start();
            }
        }

        // sessão de Delete
        if(isset($_SESSION['delete'])) { // se a varivel de sessão delete esta com conteudo
           echo "Dados excluidos com sucesso! ";
           // redirecionar para a pagina enviando a requisição de pesquisa
           echo "<script> post_to_url('../controller/pesquisaDadosPessoa.php',{ nome: '' }, 
           'POST'); </script> ";
        }

        if(isset($_SESSION['erroDelete'])) {
            echo "Dados não foram excluidos! ";
        }       

        // sessão de Pesquisa
        if(isset($retornoo)){ // em casa da variavel retorno estiver com conteudo 

            echo "
                <table class='table_' >
                    <tr class='tr_'>
                        <td class='td_'>VERIFICADO</td>
                        <td class='td_'>ID</td>
                        <td class='td_'>NOME</td>
                        <td class='td_'>EMAIL</td>
                        <td class='td_'>DATA DE NASCIMENTO </td>
                        <td class='td_'>CARGO</td>
                        <td class='td_'>
                            <a class='btn green' href='../view/cadastrar.php'>
                                Cadastro
                            </a>
                            <a class='btn red' href='../view/login.php'>
                                Login
                            </a>
                        </td>
                    </tr>
                </table>";

            foreach ($retornoo as $value){ // iterando e colocando os valores do banco nas variaveis 
                $id =  $value['id'];
                $nome = $value['nome'];
                $email = $value['email'];
                $data = $value['datanasc'];
                $cargo = $value['cargo'];

                // iterando os valores da variavel $retorno e colocando nas celulas da tabela
                echo 
                "
                    <table class='table_cabecalho' >
                        <tr class='tr_cabecalho'>
                            <td class='td_cabecalho'><img class='imgGrande' alt='perfil' src='../img/garantia.png'></td>
                            <td class='td_cabecalho'>$id</td>
                            <td class='td_cabecalho'>$nome</td>
                            <td class='td_cabecalho'>$email</td>
                            <td class='td_cabecalho'>$data</td>
                            <td class='td_cabecalho'>$cargo</td>
                            <td class='td_cabecalho td_acao'>
                                <a class='alink_ alink_up' name='id' value='$id' href='../controller/atualizarDadosUsuarioId.php?id=$id'>
                                    Atualizar 
                                </a><br> 
                                <a class='alink_ alink_del' name='id' href='../controller/excluirDadosUsuario.php?id=$id'>
                                    Deletar  
                                </a> 
                            </td>	
                        </tr>
                    </table>
                ";

            }// fim do foreach

        } else { // em caso de erro na pesquisa 
            if(isset($_SESSION['erroPesquisa'])) 
               echo $_SESSION['erroPesquisa'];
            
        }

        //apagando todos os dados da sessão
        session_unset();
        //destroi as variaveis 
        session_destroy();

        ?>
        </div> <!-- Fechaento da div cont -->

        <footer class="footer">
            <div class="div_footer" >
                <img class="img" src="../img/instagram.png" alt="logo instagram"> 
                <label> @lukas.xsz </label>
            </div>

            <div class="div_footer">
                <img class="img" src="../img/twitter.png" alt="logo twitter ">
                <label> @lukasxsz </label>
            </div>
        </footer>

    </body>
<html>