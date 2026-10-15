<?php

// Aula 04 de PWIII, prof Quaiati.

abstract Class Player{

    // atributos da classe Pessoa
    private $nome;
    private $datanasc;
    private $sexo;
    private $nivel;
    private $servidor;
    private $email;
    private $senha;


    // Construtor da classe Pessoa
    public function __construct($nome,$nivel,$sexo,$email,$senha,$servidor){
        $this->setNome($nome);    
        $this->setNivel($nivel);    
        $this->setSexo($sexo);    
        $this->setEmail($email);
        $this->setSenha($senha);
        $this->setServidor($servidor);
    }
    // metodos da classe Pessoa

    //Get e set dos atributos da classe pessoa
    
    public function getNome(){ // get do atributo nome 
        return $this->nome;
    }   
    public function setNome($nome){ // set do atributo nome
        $this->nome = $nome;
    }

    public function getNivel(){ // get do atributo nivel
        return $this->nivel;
    }   
    public function setNivel($nivel){ // set do atributo nivel
        $this->nivel = $nivel;
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

    public function getEmail(){ // get do atributo email
        return $this->email;
    }
    public function setEmail($email){  // set do atributo email
        $this->email = $email;
    }

    public function getSenha(){ // get do atributo senha
        return $this->senha;
    } 
    public function setSenha($senha){  // set do atributo senha
        $this->senha = $senha;
    }

    public function getServidor(){ // get do atributo servidor
        return $this->servidor;
    } 
    public function setServidor($servidor){  // set do atributo servidor
        $this->servidor = $servidor;
    }

    







}
