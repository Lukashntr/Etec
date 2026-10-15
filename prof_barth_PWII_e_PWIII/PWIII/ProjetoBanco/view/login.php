<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title> Login</title>
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
            .header{
                padding: 10px;
                width: 100%;
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
            .alert{
                background-color: red;
                color: white;
                padding: 10px;
                font-size: 24px;
                border-radius: 10px;
            }
        </style>
    </head>
            
    <body class="container">
        
        <form class="form" method="post" action="../controller/controllerLogin.php">

            <?php // codigo do alerta de erro e sucesso

            // verifica se a sessão ja não esta aberta 
            // se não estiver aberta, a sessão sera aberta 

            if(session_status() !== PHP_SESSION_ACTIVE){
            session_start(); //uma sessão ira se abrir
            }

            // if que cria a div de alerta
            if (isset($_SESSION['status'])) { // se $_SESSION['status'] contem valor, ira ser criada uma div id="alertOk"

            ?>

            <div id="alertok"><!-- div do alerta  -->
                <div class="<?php echo $_SESSION['css']; ?>" > <!--esta sendo passada a class css que contem o valor = 'alert' uma classe atribuida no css-->

                    <?php echo $_SESSION['status']; // sera mostrada a mensagem dentro do alert ?> 
                    <span class="closebtn" onclick="fecharBtn();" > &times; </span><!-- Criando botão que chama o metodo em js para fechar  alerta -->

                </div>
            </div>

            <?php
            } // fechamento do if de criação da div 

            //apagando todos os dados da sessão
            session_unset();
            //destroi as variaveis 
            session_destroy();

            ?>
                        
            <div class="header" >
                <label class="label_header" > Login de Usuario</label>
            </div>

            <div class="div_form">
                <label class="label"> E-mail: </label>
                <input class="input" type="text" name="email" placeholder="Informe o email de acesso">
            </div>

            <div class="div_form">
                <label class="label"> Senha: </label>
                <input class="input" type="password" name="senha" placeholder="Informe a senha de acesso">
            </div>

            <div class="div_btns" >
                <div class="div_form">
                    <button class="btn" type="submit">  
                        Logar
                    </button>
                </div>
                <div class="div_form">
                    <a class="btn" href="cadastrar.php">Cadastrar?</a>
                </div>
            </div>
        </form>

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
