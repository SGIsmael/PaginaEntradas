<?php
session_start();
$asiento = $_POST['asiento'];
include ('../php/modelo.php');
$clase = new Clase();
$clase->actualizar($asiento);
?>