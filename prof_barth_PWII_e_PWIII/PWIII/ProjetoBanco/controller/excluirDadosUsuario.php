<?php

include 'UsuarioController.php'; // importando bibliotecas
include '../dtoProjeto/Usuario.php'; // importando a classe Usuario 

$id = $_GET['id'];

// criando a instancia de um obj Pessoa
$objUsuario = new Usuario('','','','','');

// colocando o valor do id no atributo id da classe Pessoa
$objUsuario->setId($id);

// chamando o controller
$objUsuarioCont = new UsuarioController();
$objUsuarioCont->excluirUsuario($objUsuario);
