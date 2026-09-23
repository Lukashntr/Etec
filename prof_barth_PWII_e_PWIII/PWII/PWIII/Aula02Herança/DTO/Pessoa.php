<?php

// Aula 02 de PWIII, prof Quaiati.

abstract Class PessoaQ {

    // atributos da classe Pessoa
    private $nome;
    private $datanasc;
    private $sexo;
    private $sobrenome;


    // Construtor da classe Pessoa
    public function __construct($nome,$data,$sexo,$sobre){
        $this->setNome($nome);    
        $this->setDatanasc($data);    
        $this->setSexo($sexo);    
        $this->setSobrenome($sobre);    
    }

    // metodos da classe Pessoa

    public function status(){ // metodo de exibi os dados do objeto referente a classe
        echo"$this->nome";
        echo"$this->datanasc";
        echo"$this->sexo";
        echo"$this->sobrenome";
    }

    //Get e set dos atributos da classe pessoa
    
    public function getNome(){ // get do atributo nome 
        return $this->nome;
    }
    
    public function setNome($nome){ // set do atributo nome
        $this->nome = $nome;
    }

    public function getDatanasc(){ // get do atributo datanasc 
        return $this->datanasc;
    }
    
    public function setDatanasc($data){ // set do atributo datanasc
        $this->datanasc = $data;
    }

    public function getSexo(){ // get do atributo sexo
        return $this->sexo;
    }
   
    public function setSexo($sexo){  // set do atributo sexo
        $this->sexo = $sexo;
    }

    public function getSobrenome(){ // get do atributo sobrenome
        return $this->sobrenome;
    }
   
    public function setSobrenome($sobre){  // set do atributo sobrenome
        $this->sobrenome = $sobre;
    }

    







}
