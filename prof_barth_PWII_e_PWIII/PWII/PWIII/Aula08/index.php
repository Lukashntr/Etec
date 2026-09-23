<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title> IMC </title>

        <style> /* documento css interno */

            .container{ /* css do body */
                /*width: 80%;*/
                text-align: center;
                margin: auto 0;
                color: blueviolet;
            }
            .font{
                font-family: cursive;
            }
            .header{
                padding: 20px;
                margin-top: 20px;
                background: blueviolet;
                color: white;
                display: flex;
                flex-direction: row;
                justify-content: space-between;
                align-items: center;
            }
            .img{
                border-radius: 5px;
                width: 50px;
                height: 50px;
            }
            .link{
                text-decoration: none;
            }
            .div_normal{ /* css das divs que carregam uma label e um input */
                margin: 20px;
                padding: 2px;
                width: 300px;
                display: flex;
                flex-direction: row;
                justify-content: space-between;
            }
            .corpo{ /* css do corpo do formulario */
                display: flex;
                justify-content: center;
                flex-direction: column;
                align-items: center;
            }
            .margin{ /* css para definição de margin top */
                margin-top: 20px;
            }
            .label{
                color: white;
                background-color: blueviolet;
                padding: 10px;
                border-bottom-left-radius: 5px;
                border-top-left-radius: 5px;
                width: 50%;
                margin-right: 20px;
            }
            .input{ /* css dos inputs de entrada de dados */
                color:blueviolet;
                padding: 5px;
                border: solid 1px blueviolet;
                border-bottom-right-radius: 5px;
                border-top-right-radius: 5px;
            }
            .btn{ /* css do botão cadastrar */
                padding: 10px;
                color: blueviolet;
                border-radius: 15px;
                border: solid 2px white;
                background-color: white;
                font-family: cursive;
                font-size: 13px;
            }
            .btn:hover{ /* css do botão cadastrar */
                color: white;
                background-color: blueviolet;
            }
            a{
                text-decoration: none;
            }
            .footer{
                color: white;
                background-color: blueviolet;
                width: 100%;
                padding: 20px;
            }

        </style>
        
    </head>

    <body>

        <div class="header" >
            <label class="font" > Calculadora IMC </label>
        </div>

        <form method ="post" action="controller.php">

            <div class="corpo margin">

                <div class="div_normal">
                    <label class="label" > Nome: </label>
                    <input class="input" name="nome" type="text" placeholder=" Digite seu nome " value="<?= isset($_POST['nome']) ? $_POST['nome'] : '' ?>" />
                </div>

                <div class="div_normal">
                    <label class="label"  > Sexo </label>
                    <input class="input" name="sexo" type="text" placeholder=" Digite seu Sexo " value="<?= isset($_POST['sexo']) ? $_POST['sexo'] : '' ?>" />
                </div>

                <div class="div_normal">
                    <label class="label" > Altura: </label>
                    <input class="input" name="altura" type="text" placeholder=" Digite sua altura " value="<?= isset($_POST['altura']) ? $_POST['altura'] : '' ?>" />
                </div>

                <div class="div_normal">
                    <label class="label" > Peso </label>
                    <input class="input" name="peso" type="text" placeholder=" Digite seu peso " value="<?= isset($_POST['peso']) ? $_POST['peso'] : '' ?>" />
                </div>

                <div class="div_normal">
                    <button class="btn" name="calcular" type="submit">
                        Calcular
                    </button>
                </div>

            </div><!-- Fechamento da div class corpo -->
        </form>

        <footer class="footer font" >
            <label> Copyright Miguel Lukas </label>
        </footer>
       
    </body>
</html>
