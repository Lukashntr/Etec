<?php

include '../dtoProjeto/Login.php'; // importando bibliotecas 
include 'LoginController.php'; // importando bibliotecas

// recebendo os dados de login
$email = $_POST['email'];
$senha = $_POST['senha'];

$ObjLogin = new Login($email,$senha); // criandp o obj com os dados de login 

$ObjLoginCont = new LoginController();
$ObjLoginCont->verificaLogin($ObjLogin);

