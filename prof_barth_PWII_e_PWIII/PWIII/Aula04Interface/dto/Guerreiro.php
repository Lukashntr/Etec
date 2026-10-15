<?php

include_once 'Player.php'; // importando  Classes
include '../dtoi/ataque.php'; // inportando interfaces
include '../dtoi/defesa.php'; // inportando interfaces

// Aula 04 de PWIII, prof Quaiati.

Class Guerreiro extends Player implements ataque, defesa {

    // atributos da classe Guerreiro
    private $podertotal;
    private $forca;
    private $espada;
    private $escudo;
    private $rigidez;


    // Construtor da classe Guerreiro
    public function __construct($podertotal,$forca,$espada,$escudo,$rigidez){
        $this->setPoderTotal($podertotal);
        $this->setForca($forca);
        $this->setEspada($espada);
        $this->setEscudo($escudo);
        $this->setRigidez($rigidez);
    }
    
    // metodos da classe Guerreiro
    public function atacar(){
        echo ' Guerreiro iniciou um ataque ';
    }

    public function defender(){
        echo ' Guerreiro iniciou uma defesa ';
    }

    //Get e set dos atributos da classe Guerreiro
    
    public function getPoderTotal(){ // get do atributo PoderTotal
        return $this->podertotal;
    }   
    public function setPoderTotal($podertotal){ // set do atributo PoderTotal
        $this->podertotal = $podertotal;
    }

    public function getForca(){ // get do atributo Forca
        return $this->forca;
    }  
    public function setForca($forca){ // set do atributo Magia
        $this->forca = $forca;
    }

    public function getEspada(){ // get do atributo Encantamento
        return $this->espada;
    }  
    public function setEspada($espada){  // set do atributo Encantamento
        $this->espada = $espada;
    }

    public function getEscudo(){ // get do atributo Cura
        return $this->escudo;
    }
    public function setEscudo($escudo){  // set do atributo Cura
        $this->escudo = $escudo;
    }

    public function getRigidez(){ // get do atributo Sabedoria
        return $this->rigidez;
    }
    public function setRigidez($rigidez){  // set do atributo Sabedoria
        $this->rigidez = $rigidez;
    }
    
} // fechamento da classe Guerreiro
