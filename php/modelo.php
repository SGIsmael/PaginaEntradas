<?php
    class Clase{
        private $conex;

        public function __construct(){
            $this->conex = new mysqli('localhost','root','','teatropiano');
        }

        //Creará un div por cada asiento en la posición indicada y con el color que toque en cada momento
        function pintar(){
            $sentencia = "SELECT * FROM asientos";//Cogemos el total de asientos
            $conjuntoDatos = $this->conex->query($sentencia);
            $respuesta = "";
            while($dato = $conjuntoDatos->fetch_array()){
                $respuesta.= '<img style="position:absolute;left:'.$dato['x'].'px;top:'.$dato['y'].'px;height:60px;"';
                //Buscamos el usuario y la situacion del asiento
                $sentencia = "SELECT ocupado, usuario FROM reservas
                              WHERE fecha = '".$_SESSION['fecha']."'
                              AND asiento = '".$dato['cod_asiento']."'";
                $reserva = $this->conex->query($sentencia);

                if($estado = $reserva->fetch_array()){
                    if($estado['ocupado']==2 && $estado['usuario'] == $_SESSION['usuario']){
                        $respuesta.="src='img/asientoOcupadoPorMi.png' >";
                    }else if($estado['ocupado']==2){
                        $respuesta.="src='img/asientoOcupado.png' >";
                    }else if($estado['usuario'] == $_SESSION['usuario'] && $estado['ocupado']==1){
                        $respuesta.="src='img/asientoBloqueado.png' onclick='cambia(".$dato['cod_asiento'].")' >";
                    }else{
                        $respuesta.="src='img/asientoOcupado.png' >";
                    }
                }else{
                    $respuesta.=" src='img/asientoLibre.png' onclick='cambia(".$dato['cod_asiento'].")'>";
                }
            }

            //Intervalo de 30 segundos para borrar la solicitud
            $sentencia = "DELETE FROM reservas 
                          WHERE (now()-cuando)>30
                          AND ocupado = 1";
            $this->conex->query($sentencia);
            return $respuesta;
        }


        //Actualizamos la situación del asiento
        function actualizar($asiento){
            $sentencia = "SELECT ocupado FROM reservas
                   WHERE asiento =".$asiento."
                   AND fecha = '".$_SESSION['fecha']."'";
            $resultado = $this->conex->query($sentencia);
            if($resultado->fetch_array()){
                $sentencia = "DELETE FROM reservas 
                                WHERE asiento = $asiento 
                                AND fecha = '".$_SESSION['fecha']."'";
            }else{
                $sentencia = "INSERT INTO reservas 
                (asiento,fecha,ocupado,usuario,cuando)
                VALUES(".$asiento.",'".$_SESSION['fecha']."',1,'".$_SESSION['usuario']."',NOW())";
            }
            $this->conex->query($sentencia);
        }

        //Pagamos las entradas seleccionadas
        function pagar(){
            $sentencia = "UPDATE reservas SET ocupado = 2
                        WHERE ocupado = 1
                        AND usuario = '".$_SESSION['usuario']."'";
            $this->conex->query($sentencia);
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
                        $x=310;//La altura del pasillo
                    }else{
                        $x+=40;
                    }
                }
            }
        }
    }
?>