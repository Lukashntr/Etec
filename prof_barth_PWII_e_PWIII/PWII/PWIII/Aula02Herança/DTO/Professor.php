<?php

include '../DTO/Pessoa.php'; // importando a classe pessoaQ

class ProfessorQ extends PessoaQ {

    // Atributos da classe Professor 
    private $espe;
    private $cargo;
    private $salario;

    // Construtor da classe Professor
    public function __construct($nome,$data,$sexo,$sobre,$espe,$cargo,$salario){

        //  atrinutos herdados de pessoa
        $this->setNome($nome);    
        $this->setDatanasc($data);    
        $this->setSexo($sexo);    
        $this->setSobrenome($sobre);   

        // atributos proprios da classe
        $this->setEspe($espe);    
        $this->setCargo($cargo);    
        $this->setSalario($salario);    
    }

    //get e set dos atributos da classe Professor 

    public function getEspe(){ //get do atributo  espe
        return $this->espe;
    }
    public function setEspe($espe){ // set do atributo espe
        $this->espe = $espe;
    }

    public function getCargo(){ //get do atributo cargo 
        return $this->cargo;
    }
    public function setCargo($cargo){ // set do atributo cargo
        $this->cargo = $cargo;
    }

    public function getSalario(){ //get do atributo salario
        return $this->salario;
    }
    public function setSalario($salario){ // set do atributo salario
        $this->salario = $salario;
    }


  


}