<%-- 
    Document   : Principal
    Created on : 12/06/2010, 11:49:19 PM
    Author     : cramirez
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/estilos.css">
<link rel="stylesheet" type="text/css" href="css/pantalla.css">
<link rel="stylesheet" type="text/css" href="css/fuente.css">
<title>P�gina Principal Sistema de Encuestas</title>


	<style type="text/css">
		/* jQuery lightBox plugin - Gallery style */
		#gallery {
			background-color: #444;
			padding: 10px;
			width: 520px;
		}
		#gallery ul { list-style: none; }
		#gallery ul li { display: inline; }
		#gallery ul img {
			border: 5px solid #3e3e3e;
			border-width: 5px 5px 20px;
		}
		#gallery ul a:hover img {
			border: 5px solid #fff;
			border-width: 5px 5px 20px;
			color: #fff;
		}
		#gallery ul a:hover { color: #fff; }
	</style>

<script type="text/javascript">


<style>
.blink {text-decoration: blink;}
ul.vacio{
  list-style-type:none;
  margin:0 0 0 35px;
  padding:0 0 0;
}

a {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10px;
	font-weight: bold;
	color: 467B99;
	text-decoration: none;
}
a:hover {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10px;
	font-weight: bold;
	color: FF8400;
	text-decoration: none;
}
</style>

<script type="text/javascript" src="js/collapse.js"></script>

<script>
//if (history.forward(1)){location.replace(history.forward(1))}
function VerAct(ident)
{
   for (i = 1; i < 14; i++) {
     var c = String("Act"+i);
	  if (ident == i){
	   if (document.getElementById(c).style.display=='block' )
	   {
	     document.getElementById(c).style.display='none'
	   } else
	   {
		document.getElementById(c).style.display='block'
	   }
	   }
	}
}
function VerAct2(ident)
{

	  if (ident == '14'){
	   if (document.getElementById("Act12").style.display=='block' )
	   {
	     document.getElementById("Act12").style.display='block'
	   } else
	   {
		document.getElementById("Act12").style.display='block'
	   }
	   }

}



function http_request() {
	try {
		xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
	} catch (e) {
		try {
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		} catch (E) {
			xmlhttp = false;
		}
	}
	if (!xmlhttp && typeof XMLHttpRequest!='undefined') {
		xmlhttp = new XMLHttpRequest();
	}
	return xmlhttp;
}

//crear una fucnion por cada llamada
function f_fotos3()
{
 ajax=http_request();
	var valores;
	valores= "hoja=1";  // parametros a enviar al servidor

	url="MonitoreoEncuestas.html";

	document.getElementById("detalles").innerHTML ='';

	ajax.open ('POST', url, true);
    ajax.onreadystatechange = function() {
         if (ajax.readyState==1) {
                 document.getElementById("detalles").innerHTML ="<BR><BR><BR><CENTER><img src='images/cargando.gif'></img></CENTER>";
         }
         else if (ajax.readyState==4){
            if(ajax.status==200){
					document.getElementById("detalles").innerHTML =ajax.responseText;
            }
            else if(ajax.status==404){
                     document.getElementById("detalles").innerHTML = "La direccion buscada no existe o no esta disponible temporalmente";
            }
            else{

                     document.getElementById("detalles").innerHTML = ajax.responseText;
            }
        }
    }
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.send(valores);
   return;
}

function f_fotos41()
{
 ajax=http_request();
	var valores;
	valores= "hoja=1";  // parametros a enviar al servidor

	url="listadoencuestas.htm";

	document.getElementById("detalles").innerHTML ='';

	ajax.open ('POST', url, true);
    ajax.onreadystatechange = function() {
         if (ajax.readyState==1) {
                 document.getElementById("detalles").innerHTML ="<BR><BR><BR><CENTER><img src='images/cargando.gif'></img></CENTER>";
         }
         else if (ajax.readyState==4){
            if(ajax.status==200){
					document.getElementById("detalles").innerHTML =ajax.responseText;
            }
            else if(ajax.status==404){
                     document.getElementById("detalles").innerHTML = "La direccion buscada no existe o no esta disponible temporalmente";
            }
            else{

                     document.getElementById("detalles").innerHTML = ajax.responseText;
            }
        }
    }
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.send(valores);
   return;
}

function f_fotos42()
{
 ajax=http_request();
	var valores;
	valores= "hoja=1";  // parametros a enviar al servidor

	url="reportea.htm";

	document.getElementById("detalles").innerHTML ='';

	ajax.open ('POST', url, true);
    ajax.onreadystatechange = function() {
         if (ajax.readyState==1) {
                 document.getElementById("detalles").innerHTML ="<BR><BR><BR><CENTER><img src='images/cargando.gif'></img></CENTER>";
         }
         else if (ajax.readyState==4){
            if(ajax.status==200){
					document.getElementById("detalles").innerHTML =ajax.responseText;
            }
            else if(ajax.status==404){
                     document.getElementById("detalles").innerHTML = "La direccion buscada no existe o no esta disponible temporalmente";
            }
            else{

                     document.getElementById("detalles").innerHTML = ajax.responseText;
            }
        }
    }
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.send(valores);
   return;
}

function f_fotos43()
{
 ajax=http_request();
	var valores;
	valores= "hoja=1";  // parametros a enviar al servidor

	url="reporteb.htm";

	document.getElementById("detalles").innerHTML ='';

	ajax.open ('POST', url, true);
    ajax.onreadystatechange = function() {
         if (ajax.readyState==1) {
                 document.getElementById("detalles").innerHTML ="<BR><BR><BR><CENTER><img src='images/cargando.gif'></img></CENTER>";
         }
         else if (ajax.readyState==4){
            if(ajax.status==200){
					document.getElementById("detalles").innerHTML =ajax.responseText;
            }
            else if(ajax.status==404){
                     document.getElementById("detalles").innerHTML = "La direccion buscada no existe o no esta disponible temporalmente";
            }
            else{

                     document.getElementById("detalles").innerHTML = ajax.responseText;
            }
        }
    }
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.send(valores);
   return;
}

function f_fotos44()
{
 ajax=http_request();
	var valores;
	valores= "hoja=1";  // parametros a enviar al servidor

	url="reportec.htm";

	document.getElementById("detalles").innerHTML ='';

	ajax.open ('POST', url, true);
    ajax.onreadystatechange = function() {
         if (ajax.readyState==1) {
                 document.getElementById("detalles").innerHTML ="<BR><BR><BR><CENTER><img src='images/cargando.gif'></img></CENTER>";
         }
         else if (ajax.readyState==4){
            if(ajax.status==200){
					document.getElementById("detalles").innerHTML =ajax.responseText;
            }
            else if(ajax.status==404){
                     document.getElementById("detalles").innerHTML = "La direccion buscada no existe o no esta disponible temporalmente";
            }
            else{

                     document.getElementById("detalles").innerHTML = ajax.responseText;
            }
        }
    }
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.send(valores);
   return;
}



function f_fotos45()
{
 ajax=http_request();
	var valores;
	valores= "hoja=1";  // parametros a enviar al servidor

	url="reported.htm";

	document.getElementById("detalles").innerHTML ='';

	ajax.open ('POST', url, true);
    ajax.onreadystatechange = function() {
         if (ajax.readyState==1) {
                 document.getElementById("detalles").innerHTML ="<BR><BR><BR><CENTER><img src='images/cargando.gif'></img></CENTER>";
         }
         else if (ajax.readyState==4){
            if(ajax.status==200){
					document.getElementById("detalles").innerHTML =ajax.responseText;
            }
            else if(ajax.status==404){
                     document.getElementById("detalles").innerHTML = "La direccion buscada no existe o no esta disponible temporalmente";
            }
            else{

                     document.getElementById("detalles").innerHTML = ajax.responseText;
            }
        }
    }
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.send(valores);
   return;
}



function f_moni_1()
{
 ajax=http_request();
	var valores;
	valores= "hoja=1";  // parametros a enviar al servidor

	url="MonitoreoReporte01Detalle.html";

	document.getElementById("detalles").innerHTML ='';

	ajax.open ('POST', url, true);
    ajax.onreadystatechange = function() {
         if (ajax.readyState==1) {
                 document.getElementById("detalles").innerHTML ="<BR><BR><BR><CENTER><img src='images/cargando.gif'></img></CENTER>";
         }
         else if (ajax.readyState==4){
            if(ajax.status==200){
					document.getElementById("detalles").innerHTML =ajax.responseText;
            }
            else if(ajax.status==404){
                     document.getElementById("detalles").innerHTML = "La direccion buscada no existe o no esta disponible temporalmente";
            }
            else{

                     document.getElementById("detalles").innerHTML = ajax.responseText;
            }
        }
    }
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.send(valores);
   return;
}


function f_moni_2()
{
 ajax=http_request();
	var valores;
	valores= "hoja=1";  // parametros a enviar al servidor

	url="MonitoreoReporte02Detalle.html";

	document.getElementById("detalles").innerHTML ='';

	ajax.open ('POST', url, true);
    ajax.onreadystatechange = function() {
         if (ajax.readyState==1) {
                 document.getElementById("detalles").innerHTML ="<BR><BR><BR><CENTER><img src='images/cargando.gif'></img></CENTER>";
         }
         else if (ajax.readyState==4){
            if(ajax.status==200){
					document.getElementById("detalles").innerHTML =ajax.responseText;
            }
            else if(ajax.status==404){
                     document.getElementById("detalles").innerHTML = "La direccion buscada no existe o no esta disponible temporalmente";
            }
            else{

                     document.getElementById("detalles").innerHTML = ajax.responseText;
            }
        }
    }
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.send(valores);
   return;
}


function f_moni_3()
{
 ajax=http_request();
	var valores;
	valores= "hoja=1";  // parametros a enviar al servidor

	url="MonitoreoReporte03Detalle.html";

	document.getElementById("detalles").innerHTML ='';

	ajax.open ('POST', url, true);
    ajax.onreadystatechange = function() {
         if (ajax.readyState==1) {
                 document.getElementById("detalles").innerHTML ="<BR><BR><BR><CENTER><img src='images/cargando.gif'></img></CENTER>";
         }
         else if (ajax.readyState==4){
            if(ajax.status==200){
					document.getElementById("detalles").innerHTML =ajax.responseText;
            }
            else if(ajax.status==404){
                     document.getElementById("detalles").innerHTML = "La direccion buscada no existe o no esta disponible temporalmente";
            }
            else{

                     document.getElementById("detalles").innerHTML = ajax.responseText;
            }
        }
    }
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.send(valores);
   return;
}

function f_moni_4()
{
 ajax=http_request();
	var valores;
	valores= "hoja=1";  // parametros a enviar al servidor

	url="MonitoreoReporte04Detalle.html";

	document.getElementById("detalles").innerHTML ='';

	ajax.open ('POST', url, true);
    ajax.onreadystatechange = function() {
         if (ajax.readyState==1) {
                 document.getElementById("detalles").innerHTML ="<BR><BR><BR><CENTER><img src='images/cargando.gif'></img></CENTER>";
         }
         else if (ajax.readyState==4){
            if(ajax.status==200){
					document.getElementById("detalles").innerHTML =ajax.responseText;
            }
            else if(ajax.status==404){
                     document.getElementById("detalles").innerHTML = "La direccion buscada no existe o no esta disponible temporalmente";
            }
            else{

                     document.getElementById("detalles").innerHTML = ajax.responseText;
            }
        }
    }
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.send(valores);
   return;
}

	function abrir1(){
	pagina = "MonitoreoReporte01Detalle02.html";
	//win = window.open(pagina,'','Toolbar=no');
	win = window.open(pagina,'','toolbar=no,statusbar=no,titlebar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=600,height=360,top=250,left=250');
	}

	function abrir2(){
	pagina = "MonitoreoReporte02Detalle02.html";
	//win = window.open(pagina,'','Toolbar=no');
	win = window.open(pagina,'','toolbar=no,statusbar=no,titlebar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=600,height=360,top=250,left=250');
	}

	function abrir3(){
	pagina = "EncuestaRegistroPreguntaFinal.html";
	//win = window.open(pagina,'','Toolbar=no');
	win = window.open(pagina,'','toolbar=no,statusbar=no,titlebar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=500,height=200,top=250,left=250');
	}

function f_fotos1()
{
 ajax=http_request();
	var valores;
	valores= "hoja=1";  // parametros a enviar al servidor

	url="ConfiguracionEncuesta.html";

	document.getElementById("detalles").innerHTML ='';

	ajax.open ('POST', url, true);
    ajax.onreadystatechange = function() {
         if (ajax.readyState==1) {
                 document.getElementById("detalles").innerHTML ="<BR><BR><BR><CENTER><img src='images/cargando.gif'></img></CENTER>";
         }
         else if (ajax.readyState==4){
            if(ajax.status==200){
					document.getElementById("detalles").innerHTML =ajax.responseText;
            }
            else if(ajax.status==404){
                     document.getElementById("detalles").innerHTML = "La direccion buscada no existe o no esta disponible temporalmente";
            }
            else{

                     document.getElementById("detalles").innerHTML = ajax.responseText;
            }
        }
    }
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.send(valores);
   return;
}

function f_fotos2()
{
 ajax=http_request();
	var valores;
	valores= "hoja=1";  // parametros a enviar al servidor

	url="EncuestaRegistroPregunta1.html";

	document.getElementById("detalles").innerHTML ='';

	ajax.open ('POST', url, true);
    ajax.onreadystatechange = function() {
         if (ajax.readyState==1) {
                 document.getElementById("detalles").innerHTML ="<BR><BR><BR><CENTER><img src='images/cargando.gif'></img></CENTER>";
         }
         else if (ajax.readyState==4){
            if(ajax.status==200){
					document.getElementById("detalles").innerHTML =ajax.responseText;
            }
            else if(ajax.status==404){
                     document.getElementById("detalles").innerHTML = "La direccion buscada no existe o no esta disponible temporalmente";
            }
            else{

                     document.getElementById("detalles").innerHTML = ajax.responseText;
            }
        }
    }
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.send(valores);
   return;
}


function f_fotos21()
{
 ajax=http_request();
	var valores;
	valores= "hoja=1";  // parametros a enviar al servidor

	url="EncuestaRegistroPregunta2.html";

	document.getElementById("detalles").innerHTML ='';

	ajax.open ('POST', url, true);
    ajax.onreadystatechange = function() {
         if (ajax.readyState==1) {
                 document.getElementById("detalles").innerHTML ="<BR><BR><BR><CENTER><img src='images/cargando.gif'></img></CENTER>";
         }
         else if (ajax.readyState==4){
            if(ajax.status==200){
					document.getElementById("detalles").innerHTML =ajax.responseText;
            }
            else if(ajax.status==404){
                     document.getElementById("detalles").innerHTML = "La direccion buscada no existe o no esta disponible temporalmente";
            }
            else{

                     document.getElementById("detalles").innerHTML = ajax.responseText;
            }
        }
    }
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.send(valores);
   return;
}

function f_fotos22()
{
 ajax=http_request();
	var valores;
	valores= "hoja=1";  // parametros a enviar al servidor

	url="EncuestaRegistroPregunta3.html";

	document.getElementById("detalles").innerHTML ='';

	ajax.open ('POST', url, true);
    ajax.onreadystatechange = function() {
         if (ajax.readyState==1) {
                 document.getElementById("detalles").innerHTML ="<BR><BR><BR><CENTER><img src='images/cargando.gif'></img></CENTER>";
         }
         else if (ajax.readyState==4){
            if(ajax.status==200){
					document.getElementById("detalles").innerHTML =ajax.responseText;
            }
            else if(ajax.status==404){
                     document.getElementById("detalles").innerHTML = "La direccion buscada no existe o no esta disponible temporalmente";
            }
            else{

                     document.getElementById("detalles").innerHTML = ajax.responseText;
            }
        }
    }
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.send(valores);
   return;
}

function f_fotos23()
{
 ajax=http_request();
	var valores;
	valores= "hoja=1";  // parametros a enviar al servidor

	url="EncuestaRegistroPregunta4.html";

	document.getElementById("detalles").innerHTML ='';

	ajax.open ('POST', url, true);
    ajax.onreadystatechange = function() {
         if (ajax.readyState==1) {
                 document.getElementById("detalles").innerHTML ="<BR><BR><BR><CENTER><img src='images/cargando.gif'></img></CENTER>";
         }
         else if (ajax.readyState==4){
            if(ajax.status==200){
					document.getElementById("detalles").innerHTML =ajax.responseText;
            }
            else if(ajax.status==404){
                     document.getElementById("detalles").innerHTML = "La direccion buscada no existe o no esta disponible temporalmente";
            }
            else{

                     document.getElementById("detalles").innerHTML = ajax.responseText;
            }
        }
    }
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.send(valores);
   return;
}

function f_fotos24()
{
 ajax=http_request();
	var valores;
	valores= "hoja=1";  // parametros a enviar al servidor

	url="EncuestaRegistroPreguntaFinal.html";

	document.getElementById("detalles").innerHTML ='';

	ajax.open ('POST', url, true);
    ajax.onreadystatechange = function() {
         if (ajax.readyState==1) {
                 document.getElementById("detalles").innerHTML ="<BR><BR><BR><CENTER><img src='images/cargando.gif'></img></CENTER>";
         }
         else if (ajax.readyState==4){
            if(ajax.status==200){
					document.getElementById("detalles").innerHTML =ajax.responseText;
            }
            else if(ajax.status==404){
                     document.getElementById("detalles").innerHTML = "La direccion buscada no existe o no esta disponible temporalmente";
            }
            else{

                     document.getElementById("detalles").innerHTML = ajax.responseText;
            }
        }
    }
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.send(valores);
   return;
}


/*function f_limpiar()
{
document.getElementById("cronograma2").innerHTML ="";
}

function getTime() {
 var d = new Date();
 return d.getTime();
}*/

</script>


<script>
$(document).ready(function() {
$('.boton').mouseover(function() {
var nombre=$(this).attr("name");
$(this).attr("src", "images/roll/"+nombre+".jpg");
});
$('.boton').mouseout(function() {
var nombre=$(this).attr("name");
$(this).attr("src", "images/normal/"+nombre+".jpg");
});
});
</script>

</head>

<body>
<br />
<table width="1041" height="581" border="0" align="center" cellpadding="0" cellspacing="0" class="tabla2">
  <tr>
    <th height="75" colspan="3" scope="col"><img src="images/cabecera.png" width="1050" height="80" /></th>
  </tr>
  <tr >
    <td width="209"  class="td4"  >&nbsp;</td>
    <td width="425"  class="td4" >&nbsp;</td>
    <td width="415"  class="td4" ><table width="315" border="0" align="center">
      <tr  class="td4">
        <th width="140" class="td4" scope="col" ><div align="right"><a href=""  class="enlaces2">Usuario: Administrador</a></div></th>
        <th width="90" scope="col" class="td4"><div align="right"><a href="Login.html" class="enlaces2">Cerrar Sesi&oacute;n</a> </div></th>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td  valign="top"colspan="2" rowspan="3">
    <div id="detalles" style="width:100%; border-style:none" align="left"> </div>�	</td>
  </tr>
  <tr>
    <td valign="top"><table width="200"  border="2" cellpadding="0" cellspacing="0" class="tabla1">
      <tr>
        <td width="205" scope="col" align="center"  class="td5"><div align="left"><img src="images/OpConfEncuesta.jpg" width="200" height="19" /></div></td>
      </tr>
      <tr>
        <td><img src="images/icono.jpg" width="13" height="15" /><a href="#" class="enlaces" onclick="f_fotos1();">Registo de Encuesta</a><br />

		<!--<a href="#"><img src="images/icono1.gif" alt="Galeria de Fotos" border="0" onClick="f_fotos();"></a><br>-->
         </td>
      </tr>
      <tr>
        <td class="td5"><img src="images/OpEncuesta.jpg" width="200" height="19" /></td>
      </tr>
      <tr>
        <td><img src="images/icono.jpg" width="13" height="15" /><a href="#" class="enlaces" onclick="f_fotos2();">Pregunta01</a><br />

		<img src="images/icono.jpg" width="13" height="15" /><a href="#" class="enlaces" onclick="f_fotos21();">Pregunta02</a><br />
<img src="images/icono.jpg" width="13" height="15" /><a href="#" class="enlaces" onclick="f_fotos22();">Pregunta03</a><br />

<img src="images/icono.jpg" width="13" height="15" /><a href="#" class="enlaces" onclick="f_fotos23();">Pregunta04</a><br />
         </td>
      </tr>
      <tr>
        <td class="td5"><img src="images/OpMonitoreo.jpg" width="200" height="19" /></td>
      </tr>
      <tr>
        <td><img src="images/icono.jpg" width="13" height="15" /><a href="#" class="enlaces" onclick="f_fotos3();">Consulta de avance de encuesta</a> <br /></td>
      </tr>

      <tr>
        <td class="td5"><img src="images/OpReportes.jpg" width="200" height="19" /></td>
      </tr>
      <tr>
        <td><img src="images/icono.jpg" width="13" height="15" /><a href="#" class="enlaces" onclick="f_fotos41();">Encuestas</a><br />
          <img src="images/icono.jpg" width="13" height="15" /><a href="#" class="enlaces" onclick="f_fotos42();">Reporte 01</a><br />
		  <img src="images/icono.jpg" width="13" height="15" /><a href="#" class="enlaces" onclick="f_fotos43();">Reporte 02</a><br />
		  <img src="images/icono.jpg" width="13" height="15" /><a href="#" class="enlaces" onclick="f_fotos44();">Reporte 03</a><br />
		  <img src="images/icono.jpg" width="13" height="15" /><a href="#" class="enlaces" onclick="f_fotos45();">Reporte 04</a><br />
		  </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3" class="td4">&nbsp;</td>
  </tr>
</table>

</body>
</html>

