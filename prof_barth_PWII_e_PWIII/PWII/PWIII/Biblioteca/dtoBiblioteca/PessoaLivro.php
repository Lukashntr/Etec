<?php 


class PessoaLivro{

    // atributos da classe Pessoa
    private $tipo; // Aluno ou professor
    private $nome;
    private $peso;
    private $altura;
    private $sexo;

    // Construtor da classe Pessoa
    /*public function __construct($tipo,$nome,$peso,$altura,$sexo){
        $this->setTipo($tipo);
        $this->setNome($nome);    
        $this->setPeso($peso);  
        $this->setAltura($altura);
        $this->setSexo($sexo);    
    }*/

    // metodos da classe Pessoa

    public function status(){ // metodo de exibi os dados do objeto referente a classe
        echo"$this->tipo";
        echo"$this->nome";
        echo"$this->peso";
        echo"$this->altura";
        echo"$this->sexo";
    }

    public function exibirResultado($result,$livro){

        $p = "professor";
        // $a = "aluno";

        if($result == $p){
            $result = 10; // retornando 1 é professor
        }else{
            $result = 5; //  retornando 0 é aluno
        }

        $txt = " $this->nome Pegou o livro $livro e tem $result de dias para devolver " .
               " Informações extras [ Sexo: $this->sexo ] ";

        return $txt;
    }


    //Get e set dos atributos da classe pessoa
    public function getTipo(){ // get do atributo nome 
        return $this->tipo;
    }
    public function setTipo($tipo){ // set do atributo nome
        $this->tipo = $tipo;
    }
    
    public function getNome(){ // get do atributo nome 
        return $this->nome;
    }
    public function setNome($nome){ // set do atributo nome
        $this->nome = $nome;
    }

    public function getPeso(){ // get do atributo datanasc 
        return $this->peso;
    }
    public function setPeso($peso){ // set do atributo datanasc
        $this->peso = $peso;
    }

    public function getSexo(){ // get do atributo sexo
        return $this->sexo;
    }
    public function setSexo($sexo){  // set do atributo sexo
        $this->sexo = $sexo;
    }

    public function getAltura(){ // get do atributo sobrenome
        return $this->altura;
    }
    public function setAltura($altura){  // set do atributo sobrenome
        $this->altura = $altura;
    }


} // fechamento da classe Usuario
