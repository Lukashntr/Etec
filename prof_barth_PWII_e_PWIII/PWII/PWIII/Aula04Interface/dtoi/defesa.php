<?php

include '../dto/Mago.php';
include '../dto/Guerreiro.php';

    interface defesa extends Mago , Guerreiro {

    public function defender();

} 
