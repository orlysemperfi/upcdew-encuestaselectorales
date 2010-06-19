<%-- 
    Document   : pregunta1
    Created on : 13/06/2010, 10:21:11 AM
    Author     : cramirez
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/estilos.css">
<%--<link rel="stylesheet" type="text/css" href="css/pantalla.css">--%>
<link rel="stylesheet" type="text/css" href="css/fuente.css">

<script language="JavaScript">
<!--
function checker()
{

var radio_choice1 = false;
var radio_choice2 = false;
var radio_choice4 = false;
var radio_choice5 = false;

var check3 = false;

for (counter = 0; counter < document.forms[0].preg1.length; counter++)
{
    if (document.forms[0].preg1[counter].checked)
        radio_choice1 = true;
}

for (counter = 0; counter < document.forms[0].preg2.length; counter++)
{
    if (document.forms[0].preg2[counter].checked)
        radio_choice2 = true;
}

for (counter = 0; counter < document.forms[0].preg4.length; counter++)
{
    if (document.forms[0].preg4[counter].checked)
        radio_choice4 = true;
}

for (counter = 0; counter < document.forms[0].preg5.length; counter++)
{
    if (document.forms[0].preg5[counter].checked)
        radio_choice5 = true;
}

for (counter = 0; counter < document.forms[0].preg3.length; counter++)
{
    if (document.forms[0].preg3[counter].checked)
        check3 = true;
}

if (!radio_choice1)
    alert("Falta responder la pregunta 1");

if (!radio_choice2)
    alert("Falta responder la pregunta 2");

if (!check3)
    alert("Falta responder la pregunta 3");

if (!radio_choice4)
    alert("Falta responder la pregunta 4");

if (!radio_choice5)
    alert("Falta responder la pregunta 5");







if (radio_choice1 == true && radio_choice2 == true && radio_choice4 == true && radio_choice5 == true && check3 == true)
    {
        alert("Muchas gracias, su encuesta fue registrada satisfactoriamente...");
        window.location.href = "login.jsp";
    }
}

-->
</script>


</head>

<body>

 <form>
<table border="0" width="100%" height="581" cellspacing="0" cellpadding="0">
<tr>
        <td colspan="2"> <jsp:include page="/header.jsp" /> </td>
</tr>

  <tr>
    <td width="8%">&nbsp;</td>

   <td width="92%" valign="top" align="left">

  <table width="539" border="0" align="center" cellpadding="0" cellspacing="0" class="tabla2">
 

  <tr>
    <td>&nbsp;</td>
    <td colspan="2" class="subtitulosMayus">¿Cómo considera ud. la gestión actual del Municipio de lima?</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td>&nbsp;</td>
    <td class="subtitulosOpc"><div align="center">
        <input name="preg1" type="radio" value="1" />
    </div></td>
    <td class="subtitulosOpc">Buena</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
     <td width="34" class="subtitulosOpc"><div align="center">
          <input name="preg1" type="radio" value="2" />
          </div></td>
      <td class="subtitulosOpc">Muy buena</td>
	    <td>&nbsp;</td>
  </tr>

  <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg1" type="radio" value="3" />
    </div></td>
    <td width="479" class="subtitulosOpc">Mala </td>
    <td>&nbsp;</td>
  </tr>
   <tr>
   <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg1" type="radio" value="4" />
    </div></td>
    <td width="479" class="subtitulosOpc">Muy mala</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg1" type="radio" value="5" />
    </div></td>
    <td width="479" class="subtitulosOpc">Regular</td>
    <td>&nbsp;</td>
  </tr>

   <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg1" type="radio" value="6" />
    </div></td>
    <td width="479" class="subtitulosOpc">No precisa</td>
    <td>&nbsp;</td>
  </tr>
 

  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>

<!--Pregunta 2 -->
<table width="539" border="0" align="center" cellpadding="0" cellspacing="0" class="tabla2">

  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="2" class="subtitulosMayus">
        ¿Cuál cree ud. que es el principal problema que afecta al Municipio?
 </td>
    <td>&nbsp;</td>
  </tr>

    <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg2" type="radio" value="1" />
    </div></td>
    <td width="479" class="subtitulosOpc">Inseguridad publica</td>
    <td>&nbsp;</td>
  </tr>

    <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg2" type="radio" value="2" />
    </div></td>
    <td width="479" class="subtitulosOpc">Basura</td>
    <td>&nbsp;</td>
  </tr>

    <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg2" type="radio" value="3" />
    </div></td>
    <td width="479" class="subtitulosOpc">Vandalismo</td>
    <td>&nbsp;</td>
  </tr>

    <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg2" type="radio" value="4" />
    </div></td>
    <td width="479" class="subtitulosOpc">Transporte</td>
    <td>&nbsp;</td>
  </tr>


    <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg2" type="radio" value="5" />
    </div></td>
    <td width="479" class="subtitulosOpc">Corrupción</td>
    <td>&nbsp;</td>
  </tr>

    <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg2" type="radio" value="6" />
    </div></td>
    <td width="479" class="subtitulosOpc">Pavimentación</td>
    <td>&nbsp;</td>
  </tr>
  


  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>


       
 <!--Pregunta 3 -->
<table width="539" border="0" align="center" cellpadding="0" cellspacing="0" class="tabla2">

  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="2" class="subtitulosMayus">
        Independientemente de sus preferencias políticas, ¿Cuáles considera que son los PRINCIPALES OBJETIVOS que debería tener el futuro alcalde de Lima ?
 </td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc">
	<div align="center">

	      <input type="checkbox" name="preg3" value="1" />
	  </div>	</td>
	 <td class="subtitulosOpc">Mejorar la seguridad ciudadana en Lima</td>
	   <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
     <td width="34" class="subtitulosOpc"><div align="center">
         <input type="checkbox" name="preg3" value="2" />
          </div></td>
      <td class="subtitulosOpc">Combatir la corrupción</td>
	    <td>&nbsp;</td>
  </tr>

  <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
     <input type="checkbox" name="preg3" value="3" />
    </div></td>
    <td width="479" class="subtitulosOpc">Mejorar el sistema de transporte  </td>
    <td>&nbsp;</td>
  </tr>
   <tr>
   <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
     <input type="checkbox" name="preg3" value="4" />
    </div></td>
    <td width="479" class="subtitulosOpc">Prevenir y controlar la contaminación ambiental</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
   <input type="checkbox" name="preg3" value="4" />
    </div></td>
    <td width="479" class="subtitulosOpc">Mejorar el sistema de recojo de basura</td>
    <td>&nbsp;</td>
  </tr>

   <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
     <input type="checkbox" name="preg3" value="5" />
    </div></td>
    <td width="479" class="subtitulosOpc">Realizar el mantenimiento de calles y pistas</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
  <input type="checkbox" name="preg3" value="6" />
    </div></td>
    <td width="479" class="subtitulosOpc">Gestionar el monto de los arbitrios e impuestos municipales</td>
    <td>&nbsp;</td>
  </tr>

   <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
   <input type="checkbox" name="preg3" value="7" />
    </div></td>
    <td width="479" class="subtitulosOpc">Otro </td>
    <td>&nbsp;</td>
  </tr>

 
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>

<!--Pregunta 4 -->
<table width="539" border="0" align="center" cellpadding="0" cellspacing="0" class="tabla2">

  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="2" class="subtitulosMayus">
        ¿Cuál es la CUALIDAD principal que según usted debe caracterizar al futuro Alcalde?
 </td>
    <td>&nbsp;</td>
  </tr>

    <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg4" type="radio" value="1" />
    </div></td>
    <td width="479" class="subtitulosOpc">Tener objetivos y metas claras</td>
    <td>&nbsp;</td>
  </tr>

    <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg4" type="radio" value="2" />
    </div></td>
    <td width="479" class="subtitulosOpc">Ser un buen líder</td>
    <td>&nbsp;</td>
  </tr>

    <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg4" type="radio" value="3" />
    </div></td>
    <td width="479" class="subtitulosOpc">Honestidad y confiabilidad</td>
    <td>&nbsp;</td>
  </tr>

    <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg4" type="radio" value="4" />
    </div></td>
    <td width="479" class="subtitulosOpc">Firmeza y autoridad </td>
    <td>&nbsp;</td>
  </tr>


    <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg4" type="radio" value="5" />
    </div></td>
    <td width="479" class="subtitulosOpc">Capacidad para tomar decisiones difíciles</td>
    <td>&nbsp;</td>
  </tr>

 
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>


<!--Pregunta 5 -->
<table width="539" border="0" align="center" cellpadding="0" cellspacing="0" class="tabla2">

  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="2" class="subtitulosMayus">
        Por quien votaría ud. si las eleccione fueran el dia de mañana?
 </td>
    <td>&nbsp;</td>
  </tr>

    <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg5" type="radio" value="1" />
    </div></td>
    <td width="479" class="subtitulosOpc">Lourdes flores</td>
    <td>&nbsp;</td>
  </tr>

    <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg5" type="radio" value="2" />
    </div></td>
    <td width="479" class="subtitulosOpc">Alex kouri</td>
    <td>&nbsp;</td>
  </tr>

    <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg5" type="radio" value="3" />
    </div></td>
    <td width="479" class="subtitulosOpc">Susana Villaran</td>
    <td>&nbsp;</td>
  </tr>

    <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg5" type="radio" value="4" />
    </div></td>
    <td width="479" class="subtitulosOpc">Fernando Andrade</td>
    <td>&nbsp;</td>
  </tr>


    <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg5" type="radio" value="5" />
    </div></td>
    <td width="479" class="subtitulosOpc">Humberto Lay</td>
    <td>&nbsp;</td>
  </tr>

    <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="preg5" type="radio" value="6" />
    </div></td>
    <td width="479" class="subtitulosOpc">Luis Iberico</td>
    <td>&nbsp;</td>
  </tr>



  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

  

</table>





  </td>
  </tr>

   <tr>

    <td colspan="2" align="center" valign="top">
	<table width="100%" height="33" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>

		<td align="center">
                   <%-- <html:link forward="pregunta3" onclick="checker();">Terminar encuesta</html:link>--%>
                    <a href="#" onclick="checker();">Terminar encuesta </a>
                </td>
                </tr>
      </table>
	
      
  </tr>


</table>


</form>
</body>
</html>