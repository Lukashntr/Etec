<?php

require '../dtocalculadora/Calculadora.php';

$x = $_POST['x'];
$y = $_POST['y'];
$z = $_POST['z'];

$objCalculadora = new Calculadora($x,$y);

switch($z){

    case "+":

        $result = $objCalculadora->mais($x,$y);

        if(session_status() !== PHP_SESSION_ACTIVE){
            session_start();
        }

        //declarando as variaveis de sessão
        $_SESSION['result'] = $result;
        include '../view/calculadora.php';
        exit();

    break;
    case "-":

        $result = $objCalculadora->menos($x,$y);

        if(session_status() !== PHP_SESSION_ACTIVE){
            session_start();
        }

        //declarando as variaveis de sessão
        $_SESSION['result'] = $result;
        include '../view/calculadora.php';
        exit();

    break;
    case "/":

        $result = $objCalculadora->div($x,$y);

        if(session_status() !== PHP_SESSION_ACTIVE){
            session_start();
        }

        //declarando as variaveis de sessão7
        $_SESSION['result'] = $result;
        include '../view/calculadora.php';
        exit();

    break;
    case "*":
        $result = $objCalculadora->mult($x,$y);

        if(session_status() !== PHP_SESSION_ACTIVE){
            session_start();
        }

        //declarando as variaveis de sessão
        $_SESSION['result'] = $result;
        include '../view/calculadora.php';
        exit();

    break;

}