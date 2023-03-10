<?php
    session_start();
    include('php/modelo.php');
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Inicio</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='css/estilos.css'>
    <script src='ajax/refresco.js'></script>
</head>
<body>
    <header>
        <div id=visibleHeader>
            <form action=index.php method="post" >
                <input type="mail" name="correo" placeholder="palomitas@gmail.com" required>
                <input type="date" name="fecha" value="<?php echo date('Y-m-d')?>" min="<?php echo date('Y-m-d')?>" required>
                <input type="submit" name="enviar" value="Buscar asientos">
            </form>
        </div>
        <div id=controlHeader></div>
    </header>
    <main>
    <?php 
        if(isset($_POST['enviar'])){ 
                $_SESSION['usuario'] = $_POST['correo'];
                $_SESSION['fecha'] = $_POST['fecha'];
    ?>
            <div id=imagenCentral>
                <img src="img/fondoPiano.png" width="600px">
            </div>
            <div id=centrarAsientos>
                <div id=asientos></div>
                <div id=pagarCompra>
                    <form action="ajax/paga.php" method="post">
                        <input type="submit" value="Pagar">
                    </form>
                </div>
            </div>            
    <?php
        }else{
            $_SESSION['usuario'] = 0;
            $_SESSION['fecha'] = 0;  
            echo "
                <div id=saludo>
                    <h1>Bienvenido al concierto de piano</h1>
                    <p>Usa la barra superior para introducir tu correo y una fecha válida y <br>¡Comienza a buscar tus asientos para el concierto!</p>   
                </div>";
        }
    ?>
    </main>
    <footer>
        <div id=visibleFooter>
            <span>Todos los derechos reservados ©</span>
        </div>
        <div id=controlFooter></div>
    </footer>
</body>
</html>