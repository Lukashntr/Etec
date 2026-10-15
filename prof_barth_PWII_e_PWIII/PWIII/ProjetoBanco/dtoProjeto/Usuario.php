<?php

    // dto = data tranfer object: constitue as classes que são representadas tambem no banco de dados

    class Usuario {

    // Atributos da classe Pessoa
    private $id;
    private $nome;
    private $email;
    private $data;
    private $cargo;
    private $senha;

    // Metodo contrutor da classe Pessoa
    public function __construct($nome, $email, $data, $cargo, $senha) {
    
     $this->nome = $nome;
     $this->email = $email;
     $this->data = $data;
     $this->cargo = $cargo;
     $this->senha = $senha;

    }
    
    // Metodos especiais get(acessar o atributo) e set(modifica o atributo) da classe Pessoa 

    // get e set Id 
    public function getId(){
        return $this->id;
    }
    public function setId($id){
        $this->id = $id;
    }

    // get e set nome 
    public function getNome(){
        return $this->nome;
    }
    public function setNome($nome){
        $this->nome = $nome;
    }

    // get e set email 
    public function getEmail(){
        return $this->email;
    }
    public function setEmail($email){
        $this->email = $email;
    }

    // get e set data
    public function getData(){
        return $this->data;
    }
    public function setData($data){
        $this->data = $data;
    }

    // get e set cargo
    public function getCargo(){
        return $this->cargo;
    }
    public function setCargo($cargo){
        $this->cargo = $cargo;
    }

    // get e set senha 
    public function getSenha(){
        return $this->senha;
    }
    public function setSenha($senha){
        $this->senha = $senha;
    }

} // fechamento da classe Pessoa 
