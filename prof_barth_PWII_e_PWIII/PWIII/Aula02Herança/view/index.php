<?php

//include '../DTO/Pessoa.php'; // importando a classe pessoa 
include '../DTO/Professor.php'; // importando a classe pessoa 

$objPessoa = new ProfessorQ("Miguel Lukas","07/04/2001","Masculino","Costa Almeida","FrontEnd","Professor PWII","1500"); // criando obj e atribuindo dados 

$nome = $objPessoa->getNome();
$data = $objPessoa->getDatanasc();
$sexo = $objPessoa->getSexo();
$sobre = $objPessoa->getSobrenome();
$espe = $objPessoa->getEspe();
$cargo = $objPessoa->getCargo();
$salario = $objPessoa->getSalario();

// echo que exibi uma tabela com os dados inseridos
?>
  <!DOCTYPE html>
  <html lang="pt-br">
      <head>
        <meta charset="UTF-8">
        <title> CADASTRAR PESSOA </title>
        <link rel="stylesheet" type="text/css" href="../css/.css">
        <link rel="stylesheet" type="text/css" href="../css/alert.css">
      <style>
      .container{
        width: 80%;
        margin: 0 auto;
        color: blueviolet;
      }
      .form{
        margin-top: 50px;
        display: flex;
        flex-direction: column;
        align-content: space-around;
        align-items: center;
      }
      .divs{
        display: flex;
        flex-direction: row;
        align-content: space-around;
        align-items: center;
        padding: 20px;
      }
      .label{
        width: 100px;
        height: 20px; 
        padding-left: 50px;
      }
      input{
        color: blueviolet;
        border-color: blueviolet;
        border:solid 1px;
      }
      
      </style>
      </head>
    <body class="container">   

      <?php
        echo"
          <form class='form'>
            <div class='divs'>
              <label class='label' > Nome: </label>
              <input type='text' name='nome' value='$nome' > 
            </div>
            <div class='divs'>
              <label class='label' > Data nasc: </label>
              <input class='input' type='text' name='nome' value='$data' > 
            </div>
            <div class='divs'>
              <label class='label' > Sexo: </label>
              <input class='input' type='text' name='nome' value='$sexo' > 
            </div>
            <div class='divs'>
              <label class='label' > Sobre Nome: </label>
              <input class='input' type='text' name='nome' value='$sobre' > 
            </div>
            <div class='divs'>
              <label class='label' > Especialidade: </label>
              <input class='input' type='text' name='nome' value='$espe' > 
            </div>
            <div class='divs'>
              <label class='label' > Cargo: </label>
              <input class='input' type='text' name='nome' value='$cargo' > 
            </div>
            <div class='divs'>
              <label class='label' > Salario: </label>
              <input class='input' type='text' name='nome' value='$salario' > 
            </div>
          </form>
        ";
      ?>
    </body>
  </html>
