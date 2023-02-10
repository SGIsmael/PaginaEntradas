<?php
//Necesitamos esta página para poder refrescar solo una parte del programa
session_start();
include('../php/modelo.php');
$clase = new Clase();
echo $clase->pintar();
?>