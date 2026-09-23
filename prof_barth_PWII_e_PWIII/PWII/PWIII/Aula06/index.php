<?php

function listaArquivos(string $caminho) : string
{
    $retorno = "<ul>";

    foreach (new DirectoryIterator($caminho) as $fileInfo) {
        if ($fileInfo->isDot()) continue;
 
        $c = $fileInfo->getFilename();
        $retorno .="<li> <a href='$c'>";

        if ($fileInfo->isDir()){

            $retorno .= $fileInfo->getFilename();

            $retorno .= listaArquivos($caminho . '/' . $fileInfo->getFilename());
        } else {
            $retorno .= $fileInfo->getFilename();
        }

        $retorno .='</a></li>';
    }

    $retorno .='</ul>';

    return $retorno;
}

echo listaArquivos('./');