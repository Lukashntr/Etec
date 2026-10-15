<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title> IMC </title>
        <style>
            .container{
                margin: 0 auto;
                width: 80%;
                text-align: center;
                font-family: cursive;
                background-image: url('../img/back.jpg');
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
            }
            .label_header{
                color: white;
                font-size: 30px;
            }
            .form{
                margin-top: 100px;
                padding: 20px;
                width: 50%;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
            }
            .div_form{
                display: flex;
                flex-direction: row;
                align-items: center;
                justify-content: center;
                margin: 15px;
                background-color: #0080ff;
                border-radius: 10px;
            }
            .label{
                margin-right: 15px;
                margin-left: 10px;
                color:white;
                font-size: 20px;
            }
            .input{
                padding: 10px;
                border: solid 2px #0080ff;
                border-radius: 10px;
            }
            .btn{
                color: white;
                background-color: #0080ff;
                padding: 5px;
                border-radius: 10px;
                border: solid 1px #0080ff;
                width: 100px;
                font-family: cursive;
                font-size: 17px;
            }
            .div_btns{
                display: flex;
                flex-direction: row;
                align-items: center;
                justify-content: center;
                margin: 5px;
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
            }
        </style>
    </head>
            
    <body class="container">

    <?php    

        // verificando se a sessão esta aberta caso não estiver ela irá se abrir!
        if(session_status() !== PHP_SESSION_ACTIVE){
        session_start();
        }

        // verifica se a variavel $upgrade_pesquisa esta com conteudo

        if(isset($upgrade_pesquisa)){ // caso tiver conteudo a pagina ira ser imprimida na tela

            //iteração dos index as variaveis a partir do array $upgrade_pesquisa
            foreach ($upgrade_pesquisa as $value){ // iterando e colocando os valores do banco nas variaveis 
                $id =  $value['id'];
                $nome = $value['nome'];
                $email = $value['email'];
                $data = $value['datanasc'];
                $cargo = $value['cargo'];
                

                // imprimi todo o conteudo html
                echo "

                    <form class='form' method='post' action='../controller/atualizarUsuario.php'>

                        <div class='header' >
                            <label class='label_header' > Atualizar Usuario</label>
                        </div>

                        <div class='div_form'> 
                            <label class='label'> Id: </label>
                            <input class='input' type='text' name='id' value='$id' >
                        </div>

                        <div class='div_form'> 
                            <label class='label'> Nome: </label>
                            <input class='input' type='text' name='nome' value='$nome'>
                        </div>

                        <div class='div_form'>
                            <label class='label'> E-mail: </label>
                            <input class='input' type='text' name='email' value='$email'>
                        </div>
                        <div class='div_form'>
                            <label class='label'> Data de nascimento : </label>
                            <input class='input' type='text' name='data' value='$data'>
                        </div>
                        <div class='div_form'>
                            <label class='label'> Cargo: </label>
                            <input class='input' type='text' name='cargo' value='$cargo'>
                        </div>
                        <div class='div_form'>
                            <label class='label'> Senha: </label>
                            <input class='input' type='password' name='senha'>
                        </div>

                        <div class='div_btns' >
                            <div class='div_form'>
                                <button class='btn' type='submit'>  
                                    Atualizar
                                </button>
                            </div>
                            <div class='div_form'>
                                <a class='btn' href='../view/login.php'>Logar?</a>
                            </div>
                        </div>

                    </form> ";
                }
                
            } else { // em caso de erro na atualização
 
            // verifica se a variavel de sessão erroUpgrade esta com conteudo 
            if(isset($_SESSION['erroUpgrade'])) 
               echo $_SESSION['erroUpgrade.upgrade.php'];
                
            }
            // apagando todos os dados da sessão
            session_unset();
    
            // destroi a variavel de sessão 
            session_destroy();

    ?>

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
</html>
