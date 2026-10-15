<?php
include 'IMC.php'; // importando a biblioteca com a classe IMC  

$sexo = $_POST['sexo'];
$nome = $_POST['nome'];
$altura = $_POST['altura'];
$peso = $_POST['peso'];

$objIMC = new IMC($sexo,$nome,$altura,$peso); // criando obj apartir do construtor 

$c = $objIMC->CalculoIMC($objIMC); // variavel recebe o valor do metodo de calculo da classe IMC passado o objIMC como parametro 

$objIMC->Exibir($c,$objIMC->getSexo()); // exibinco o resultado do calculo na tela 