<?php

include '../dto/Mago.php';
include '../dto/Guerreiro.php';

    interface ataque extends Mago , Guerreiro {

    public function atacar();

} 


