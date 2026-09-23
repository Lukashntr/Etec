<?php

class Calculadora{
    
    //atributos da classe Calculadora
    private $x;
    private $y;

    // construtor da classe Calculadora
    public function __construct($x,$y){
        $this->x = $x;
        $this->y = $y;
    }

    // metodos da classe calculadora
    public function mais($x,$y){
        $r = $x + $y;
        return $r;
    }

    public function menos($x,$y){
        $r = $x - $y;
        return $r;
    }

    public function mult($x,$y){
        $r = $x * $y;
        return $r;
    }

    public function div($x,$y){
        $r = $x / $y;
        return $r;
    }

} // fechamento da class Calculadora
