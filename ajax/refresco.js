var segundos = 1; //Tiempo de refresco
var divID = 'asientos'; //Id del div a actualizar
var ajax1;
var ajax2;

window.onload = function(){
    ajax1 = new XMLHttpRequest();//Permite iintercambiar datos entre pph y ajax
    ajax2 = new XMLHttpRequest();
    refresca();
}

function refresca(){
    ajax1.onreadystatechange=function(){
        if(ajax1.readyState==4 && ajax1.readyState!=null){//El estado 4 esta esperando orden.
            document.getElementById(divID).innerHTML=ajax1.responseText;
            setTimeout('refresca()',segundos*1000);
        }
    }
    ajax1.open('GET', 'ajax/situacion.php' , true);
    ajax1.send(null);
}

function cambia(asiento){
    //Va a enviar a actualiza el asiento a cambiar
    alert('Llega a su fin');
    ajax2.open('POST','ajax/actualiza.php',true);
    ajax2.setRequestHeader('Content-Type',"application/x-www-form-urlencoded");
    ajax2.send('asiento='+asiento);
    alert('Llega a su fin');
}