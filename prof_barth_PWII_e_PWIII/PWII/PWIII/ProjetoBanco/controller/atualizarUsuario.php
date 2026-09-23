<?php

 // importando classes php
 include '../dtoProjeto/Usuario.php'; // importando classe Pessoa 
 include 'UsuarioController.php';

 // Recebendo dados do formulario
 $id = $_POST['id'];
 $nome = $_POST['nome'];
 $email = $_POST['email'];
 $data = $_POST['data'];
 $cargo = $_POST['cargo'];
 $senha = $_POST['senha'];

 //crio minha instancia de obj da classe pessoa 
 $objUsuario = new Usuario($nome, $email, $data, $cargo, $senha);  //passando dados recidos do formulario para o obj

 //Chamar controller
 $objUsuarioCont = new UsuarioController();
 $objUsuarioCont->atualizarUsuario($objUsuario, $id); // inserindo os dados no banco atraves do metodo da classe PessoaController
