<?php 

class Livros{

    // atriutos da classe livro 
    private $livro;

    // construtor da classe Livro 
    public function __construct($livro){
        $this->setLivro($livro);
    }

    // get e set do atributo livro
    public function setLivro($livro){
        $this->livro = $livro;
    }
    public function getLivro(){
        return $this->livro;
    }

    }  // fechamento da classe Livro 