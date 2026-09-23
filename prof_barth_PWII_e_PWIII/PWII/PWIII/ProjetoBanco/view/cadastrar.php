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

        <form class= "form" method="post" action="../controller/inserirUsuario.php">

            <div class="header" >
                <label class="label_header"> Cadastro de Usuario </label>
            </div>

            <div class="div_form">
                <label class="label"> Nome: </label>
                <input class="input" type="text" name="nome" placeholder="Informe seu nome" required>
            </div>
            <div class="div_form">
                <label class="label"> E-mail: </label>
                <input class="input" type="text" name="email" placeholder="Informe seu email" required>
            </div>
            <div class="div_form">
                <label class="label"> Data de nascimento : </label>
                <input class="input" type="text" name="data" placeholder="Informe a data de nasc." required>
            </div>
            <div class="div_form">
                <label class="label"> Cargo: </label>
                <input class="input" type="text" name="cargo" placeholder="Informe o cargo" required>
            </div>
            <div class="div_form">
                <label class="label"> Senha: </label>
                <input class="input" type="password" name="senha" placeholder="cadastre um senha" required>
            </div>

            <div class="div_btns" >
                <div class="div_form">
                    <button class="btn" type="submit">  
                        Cadastrar
                    </button>
                </div>
                <div class="div_form">
                    <a class="btn" href="login.php">Logar?</a>
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
