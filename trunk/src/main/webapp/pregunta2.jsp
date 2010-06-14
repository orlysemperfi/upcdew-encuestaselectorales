<%-- 
    Document   : pregunta2
    Created on : 13/06/2010, 10:52:39 AM
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

<title></title>
</head>
<body>

<table border="0" width="100%" height="581" cellspacing="0" cellpadding="0">
	<tr>
		<td colspan="2"> <jsp:include page="/header.jsp" /> </td>
	</tr>

  <tr>
    <td width="8%">&nbsp;</td>

   <td width="92%" valign="top" align="left">

 <table width="539" border="0" align="center"   cellpadding="0" cellspacing="0" class="tabla2">
  <tr>
    <td width="10" scope="col">&nbsp;</td>
    <td colspan="2" scope="col" class="letrast" >Encuesta electoral 1 </td>
    <td width="16" scope="col">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="2" class="subtitulosMayus">Independientemente de sus preferencias políticas, ¿cuáles considera que son los PRINCIPALES OBJETIVOS que debería tener el futuro alcalde de Lima o la futura alcaldesa de
Lima? </td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc">
	<div align="center">


	      <input type="checkbox" name="checkbox" value="checkbox" />
	  </div>	</td>
	 <td class="subtitulosOpc">Mejorar la seguridad ciudadana en Lima</td>
	   <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
     <td width="34" class="subtitulosOpc"><div align="center">
         <input type="checkbox" name="checkbox" value="checkbox" />
          </div></td>
      <td class="subtitulosOpc">Combatir la corrupción</td>
	    <td>&nbsp;</td>
  </tr>

  <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
     <input type="checkbox" name="checkbox" value="checkbox" />
    </div></td>
    <td width="479" class="subtitulosOpc">Mejorar el sistema de transporte  </td>
    <td>&nbsp;</td>
  </tr>
   <tr>
   <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
     <input type="checkbox" name="checkbox" value="checkbox" />
    </div></td>
    <td width="479" class="subtitulosOpc">Prevenir y controlar la contaminación ambiental</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
   <input type="checkbox" name="checkbox" value="checkbox" />
    </div></td>
    <td width="479" class="subtitulosOpc">Mejorar el sistema de recojo de basura</td>
    <td>&nbsp;</td>
  </tr>

   <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
     <input type="checkbox" name="checkbox" value="checkbox" />
    </div></td>
    <td width="479" class="subtitulosOpc">Realizar el mantenimiento de calles y pistas</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
  <input type="checkbox" name="checkbox" value="checkbox" />
    </div></td>
    <td width="479" class="subtitulosOpc">Gestionar el monto de los arbitrios e impuestos municipales</td>
    <td>&nbsp;</td>
  </tr>

   <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
   <input type="checkbox" name="checkbox" value="checkbox" />
    </div></td>
    <td width="479" class="subtitulosOpc">Otro </td>
    <td>&nbsp;</td>
  </tr>

   <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input type="checkbox" name="checkbox" value="checkbox" />
    </div></td>
    <td width="479" class="subtitulosOpc">No precisa  </td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td>&nbsp;</td>
    <td colspan="2" rowspan="3" align="center" valign="top">
	<table width="400" height="33" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="200" align="center">
                   <!-- <a href="" onclick="f_fotos21();" class="enlaces">Atras</a> -->
                   <html:link forward="pregunta1">Atras</html:link>
                  </td>
          

		<td width="200" align="center">
                     <html:link forward="pregunta3">Siguiente</html:link>
                   <!-- <a href="" onclick="f_fotos22();" class="enlaces">Siguiente</a> -->
                </td>
                </tr>
      </table>
	</td>
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
</table>

</body>
</html>

