<?php
session_start();
include ('../php/modelo.php');
$clase = new Clase();
$clase->pagar();
?>