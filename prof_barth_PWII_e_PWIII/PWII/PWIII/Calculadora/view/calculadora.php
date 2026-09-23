<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title> IMC </title>
    </head>
            
    <body>

        <div class="header" >
            <label class="font" > Calculadora IMC </label>
        </div>

        <form method="post" action="../controller/controllerCalculadora.php">

            <div class="corpo margin">
                <div>
                    <label> Numero 01 </label>
                    <input type="text" name="x">
                </div>    
                <div>
                    <label> Numero 02 </label>
                    <input type="text" name="y">
                </div>
                <button type="submit" name="z" value="+"> + </button>
                <button type="submit" name="z" value="-"> - </button>
                <button type="submit" name="z" value="/"> / </button>
                <button type="submit" name="z" value="*"> * </button>
            </div><!-- Fechamento da div class corpo -->
        </form>

        <?php // codigo do alerta de erro e sucesso

            // verifica se a sessão ja não esta aberta 
            // se não estiver aberta, a sessão sera aberta 

            if(session_status() !== PHP_SESSION_ACTIVE){
            session_start(); //uma sessão ira se abrir
            }

            // if que cria a div de alerta
            if (isset($_SESSION['result'])) { // se $_SESSION['result'] contem valor, ira ser criada uma div id="alertOk"

        ?>

            <div><!-- div do alerta  -->
                <label> = </label>
                <div class="" > <!--esta sendo passada a class css que contem o valor = 'alert' uma classe atribuida no css-->
                    <?php echo $_SESSION['result']; // sera mostrada a mensagem dentro do alert ?> 
                </div>
            </div>

        <?php

            } // fechamento do if de criação da div 

            //apagando todos os dados da sessão
            session_unset();
            //destroi as variaveis 
            session_destroy();

        ?>            

        <footer class="footer font">
            <label> Copyright Miguel Lukas </label>
        </footer>
       
    </body>
</html>
