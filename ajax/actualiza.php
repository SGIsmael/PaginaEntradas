<?php
session_start();
$asiento = $_POST['asiento'];
$clase = new Clase();
$clase->actualizar($asiento);
?>