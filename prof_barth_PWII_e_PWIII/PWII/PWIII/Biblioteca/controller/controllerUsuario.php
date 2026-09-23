<?php

include "../dtoBiblioteca/PessoaLivro.php"; // importando a biblioteca com a classe Usuarios  
include "../dtoBiblioteca/Livros.php"; // importando a biblioteca com a classe Livros

$tipo = $_POST['tipo'];
$livro = $_POST['livro'];
$sexo = $_POST['sexo'];
$nome = $_POST['nome'];
$altura = $_POST['altura'];
$peso = $_POST['peso'];

$objUsuario = new PessoaLivro(); // criando obj apartir do construtor


    $objUsuario->setTipo($tipo);
    $objUsuario->setSexo($sexo);
    $objUsuario->setNome($nome);
    $objUsuario->setAltura($altura);
    $objUsuario->setPeso($peso);



$objLivro = new Livros($livro); //criando o obj livro apartir do construtor
$txt = $objUsuario->exibirResultado($tipo, $objLivro->getLivro());

echo " <h1> $txt </h1> " ;
