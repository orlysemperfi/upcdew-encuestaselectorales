<%-- 
    Document   : encuestasPorDistrito
    Created on : 17/06/2010, 10:40:06 PM
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
</head>

<body>
<form action="Preguntas.do" method="post">

<table border="0" width="100%" height="581" cellspacing="0" cellpadding="0">
<tr>
        <td colspan="2"> <jsp:include page="/header.jsp" /> </td>
</tr>

  <tr>
    <td width="8%">&nbsp;</td>

   <td width="92%" valign="top" align="left">

  <table width="539" border="0" align="center" cellpadding="0" cellspacing="0" class="tabla2">
  <tr>
    <td width="10" scope="col">&nbsp;</td>
    <td colspan="2" scope="col" class="letrast" >Encuestas por distrito </td>
    <td width="16" scope="col">&nbsp;</td>
  </tr>

  <tr>
    <td>&nbsp;</td>
    <td colspan="2" class="subtitulosMayus">Elija la encuesta que desea empezar:</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td>&nbsp;</td>
    <td class="subtitulosOpc"><div align="center">
        <input name="number" type="radio" value="1" />
    </div></td>
    <td class="subtitulosOpc">Elecciones Municipales 2010 - Sector Alto</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
     <td width="34" class="subtitulosOpc"><div align="center">
          <input name="number" type="radio" value="2" />
          </div></td>
      <td class="subtitulosOpc">Elecciones Municipales 2010 - Sector Medio</td>
	    <td>&nbsp;</td>
  </tr>

  <tr>
    <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="number" type="radio" value="3" />
    </div></td>
    <td width="479" class="subtitulosOpc">Elecciones Lima Sur 2010 - II </td>
    <td>&nbsp;</td>
  </tr>
   <tr>
   <td>&nbsp;</td>
    <td width="34" class="subtitulosOpc"><div align="center">
      <input name="number" type="radio" value="4" />
    </div></td>
    <td width="479" class="subtitulosOpc">Elecciones lima Norte 2010 -II </td>
    <td>&nbsp;</td>
  </tr>

   <tr>
    <td>&nbsp;</td>
    <td colspan="2" rowspan="3" align="center" valign="top">
	<table width="400" height="33" border="0"  align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center">

            <div align="center">
                <%-- <html:link forward="pregunta1">Empezar encuesta</html:link>--%>

<a href="Preguntas.do" class="enlaces">Empezar encuesta</a>
            </div>

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

</form>

</body>
</html>