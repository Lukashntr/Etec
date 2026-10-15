<?php

include_once 'Player.php'; // inportando Classes
include '../dtoi/ataque.php'; // inportando interfaces
include '../dtoi/defesa.php'; // inportando interfaces

// Aula 04 de PWIII, prof Quaiati.

Class Mago extends Player implements ataque, defesa{

    // atributos da classe Mago
    private $podertotal;
    private $magia;
    private $encantamento;
    private $cura;
    private $sabedoria;


    // Construtor da classe Mago
    public function __construct($podertotal,$magia,$encantamento,$cura,$sabedoria){
        $this->setPoderTotal($podertotal);
        $this->setMagia($magia);
        $this->setEncantamento($encantamento);
        $this->setCura($cura);
        $this->setSabedoria($sabedoria);
    }

    // metodos da classe Mago
    public function atacar(){
        echo ' Mago iniciou um ataque ';
    }

    public function defender(){
        echo ' Mago iniciou uma defesa ';
    }


    //Get e set dos atributos da classe Mago
    
    public function getPoderTotal(){ // get do atributo PoderTotal
        return $this->podertotal;
    }   
    public function setPoderTotal($podertotal){ // set do atributo PoderTotal
        $this->podertotal = $podertotal;
    }

    public function getMagia(){ // get do atributo Magia
        return $this->magia;
    }  
    public function setMagia($magia){ // set do atributo Magia
        $this->magia = $magia;
    }

    public function getEncantamento(){ // get do atributo Encantamento
        return $this->encantamento;
    }  
    public function setEncantamento($encantamento){  // set do atributo Encantamento
        $this->encantamento = $encantamento;
    }

    public function getCura(){ // get do atributo Cura
        return $this->cura;
    }
    public function setCura($cura){  // set do atributo Cura
        $this->cura = $cura;
    }

    public function getSabedoria(){ // get do atributo Sabedoria
        return $this->sabedoria;
    }
    public function setSabedoria($sabedoria){  // set do atributo Sabedoria
        $this->sabedoria = $sabedoria;
    }

} // fechamento da classe Mago
