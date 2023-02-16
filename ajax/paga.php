<?php
session_start();
include ('../php/modelo.php');
$clase = new Clase();
$clase->pagar();
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Inicio</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='../css/estilos.css'>
</head>
<body>
    <div id="pagado">
        <?php
            echo "<h1>¡Genial!</h1>
                  <p>Las entradas se mandarán a tu correo: ".$_SESSION['usuario']."</p>
                  <p>Pulsa aquí para volver.</p>";
        ?>
        <a href="../index.php">Volver</a>
    </div>
</body>
</html>