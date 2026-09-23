<?php

$hino = <<< HINO
Miguel é super é super lindo e gostoso,
maravilhoso um homão da porra
HINO;

class ContadorDeVogal implements Countable {

    private $text;

    public function __construct($text)
    {
        $this->text = $text;
    }


}