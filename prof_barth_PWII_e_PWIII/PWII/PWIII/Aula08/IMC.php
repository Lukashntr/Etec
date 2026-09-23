<?php

class IMC {

    // atributos da classe IMC 
    private $sexo;
    private $nome;
    private $altura;
    private $peso;

    // Construtor da classe IMC
    public function __construct($sexo, $nome,$altura ,$peso){   
        $this->sexo = $sexo;
        $this->nome = $nome;
        $this->altura = $altura;
        $this->peso = $peso;
    }

    // metodo para calcular  o imc 
    public function CalculoIMC($obj){
        $obj->altura = str_replace(',', '.', $obj->altura);
        $resultado = $obj->peso / ($obj->altura * $obj->altura);
            
        return $resultado;
    }

    // metodo para exibir os resultados 
    public function Exibir($result,$sexo){
    
        switch ($sexo) { // verificação do sexo do usuario a ser analizado 

        case "m": // case masculino 

            if($result <= 20){

                echo " <h1> $this->nome esta com o imc a baixo do normal com o valor de $result </h1> ";

            } else if ($result >= 20 AND $result <= 24.9){

                echo " <h1> $this->nome esta com o imc em media com o valor de $result </h1> ";

            } else if ($result >= 25 AND $result <= 29.9){

                echo " <h1> $this->nome esta com o imc alto caracterizando obesidade Leve com o valor de $result </h1> ";

            } else if ($result >= 30 AND $result <= 39.9){

                echo " <h1>  $this->nome esta com o imc alto caracterizando obesidade Moderada com o valor de $result </h1> ";

            } else {

                echo " <h1> $this->nome esta com o imc alto caracterizando obesidade Morbida com o valor de $result </h1> ";
            } 

        break;

        case "f" : // case feminino 

            if($result <= 19){

                echo " <h1> $this->nome esta com o imc a baixo do normal com o valor de $result </h1> ";

            } else if ($result >= 19 AND $result <= 23.9){

                echo " <h1> $this->nome esta com o imc em media com o valor de $result </h1> ";

            } else if ($result >= 24 AND $result <= 28.9){

                echo " <h1> $this->nome esta com o imc alto caracterizando obesidade Leve com o valor de $result </h1> ";

            } else if ($result >= 29 AND $result <= 38.9){

                echo " <h1> $this->nome esta com o imc alto caracterizando obesidade Moderada com o valor de $result </h1> ";

            } else {

                echo " <h1> $this->nome esta com o imc alto caracterizando obesidade Morbida com o valor de $result </h1> ";
            } 
        break;

        } // fechamento do switch

    } // fechamento do metodo 

    // get e set da classe IMC 
    public function getSexo(){
        return $this->sexo;
    }
 
} // fechamento da classe IMC 
