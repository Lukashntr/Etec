<?php  // arquivo php da aula 05 copiado de um pdf
class Livro {

    public $titulo;
    public $autor;
    public $genero;

    public function __construct($titulo,$autor,$genero)
    {
        $this->titulo = $titulo;
        $this->autor = $autor;
        $this->genero = $genero;
    }

} // fechamento da classe Livro 

class LivroCollection {

    private $livro = []; // array livro

    public function addLivro(Livro $livro) : LivroCollection { // metodo para adicionar um livro ao array 

        $this->livro[] = $livro; // adicinando livro ao array 

        return $this; // retornando o obj que chamou o metodo
    }

    public function count() : int {
        return count($this->livro);
    }

}//  fechamento da classe LivroCollection

$livros = new LivroCollection; // criando obj da classe LivroCollection

/*$livros = [ // criano array com os objetos da classe Livro
    new Livro('Livro1','Autor1','Genero1'),
    new Livro('Livro2','Autor2','Genero2'),
    new Livro('Livro3','Autor3','Genero3'),
    new Livro('Livro4','Autor4','Genero4'),
];*/

$livros->addLivro(new Livro('Livro1' , 'Autor1', 'Genero1'))
    ->addLivro(new Livro('Livro2' , 'Autor2', 'Genero2'))
    ->addLivro(new Livro('Livro3' , 'Autor3', 'Genero3'));


echo '<pre>';

$objcount = [];
$objcount = $livros;

//$iterator = new ArrayIterator($livros); // criandp iterador para a o array 

//$iterator->append(new Livro('Livro novo','Autor novo ', 'Genero novo')); // adicionando novo index(espaço) no array de objetos

//$iterator->asort(); 

var_dump($livros);

echo '<hr>';

echo "Total de itens: {$livros->count($livros)}";

echo '<hr>';

echo ' totalde livros: ' . count($livros);

/*foreach ($iterator as $item) {
    var_dump($item);
    echo '<hr>a';
}*/

//echo '<p> Obtendo uma copia do array </p>';

//var_dump($iterator->getArrayCopy());
