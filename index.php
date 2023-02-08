<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Inicio</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
</head>
<body>
    <form action=index.php method="post">
        <label for="correo">Introduce tu correo:</label><input type="mail" name="correo" placeholder="palomitas@gmail.com" required>
        <label for="fecha">Escoge una fecha</label><input type="date" name="fecha" value="<?php echo date('Y-m-d')?>" min="<?php echo date('Y-m-d')?>" required>
        <input type="submit" name="enviar" value="Buscar asientos">
    </form>
    <?php
    if(isset($_POST['enviar'])){
        echo "<img src=img/fondoPiano.png width=700px>";




    }
    ?>
</body>
</html>