<div id=imagenCentral>
    <img src="img/fondoPiano.png" width="600px">
</div>
<div id=centrarAsientos>
   <div id=asientos>
    <?php
        include('modelo.php');
        $modelo = new Modelo();
        $modelo->pintar();
        // $modelo->insertarTodo(); //Solo será necesario usarlo una vez
    ?>
    </div> 
</div>
