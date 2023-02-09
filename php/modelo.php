<?php
    class Modelo{
        private $conex;

        public function __construct(){
            $this->conex = new mysqli('localhost','root','','teatropiano');
        }

        function pintar(){
            $sentencia = "SELECT * FROM asientos";
            $datos = $this->conex->query($sentencia);
            while($dato = $datos->fetch_array()){
                echo "<img src=img/asientoLibre.png height=60px style=position:absolute;top:".$dato['y']."px;left:".$dato['x']."px>";
            }
        }

        //Evitamos meter 70 inserciones a mano 
        function insertarTodo(){
            $x = 0; //left
            $y = 0;//top
            for($i = 0; $i <70; $i++){
                $sentencia ="INSERT INTO `asientos` (`cod_asiento`, `x`, `y`) 
                            VALUES (NULL, '$x', '$y')";
                $this->conex->query($sentencia);
                if($x == 470){
                    $y+=70;
                    $x=0;
                }else{
                    if($x == 160){
                        $x=310; 
                    }else{
                        $x+=40;
                    }
                }
            }
        }
    }
?>