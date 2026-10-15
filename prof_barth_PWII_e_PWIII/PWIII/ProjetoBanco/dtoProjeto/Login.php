<?php

class Login{

    // Atributos da classe Login
    private $emaillogin;
    private $senhalogin;

    // Construtor da classe Login
    public function __construct($email, $senha)
    {
        $this->setEmaillogin($email);
        $this->setSenhalogin($senha);
    }

    // get e set da classe Login

    public function getEmaillogin(){
        return $this->emaillogin;
    }
    public function setEmaillogin($email){
        $this->emaillogin = $email;
    }


    public function getSenhalogin(){
        return $this->senhalogin;
    }
    public function setSenhalogin($senha){
        $this->senhalogin = $senha;
    }





} // fechamento da classe Login