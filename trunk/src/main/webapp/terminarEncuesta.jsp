<%-- 
    Document   : terminarEncuesta
    Created on : 01/08/2010, 11:12:51 AM
    Author     : cramirez
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Registro encuesta satisfactorio</title>

        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/estilos.css">
<%--<link rel="stylesheet" type="text/css" href="css/pantalla.css">--%>
<link rel="stylesheet" type="text/css" href="css/fuente.css">

        
    </head>
    <body>
        <table border="0" width="100%" height="40%" cellspacing="0" cellpadding="0">
<tr>
        <td colspan="2"> <jsp:include page="/header.jsp" /> </td>
</tr>

  <tr>
    <td width="8%">&nbsp;</td>

   <td width="92%" valign="top" align="center">

  <table width="539" height="500" border="0" align="center" cellpadding="0" cellspacing="0" class="tabla2">
  <tr>
      <td width="10" scope="col" height="20%">&nbsp;</td>
    <td colspan="2" scope="col" class="Titulo" >
    Su encuesta se registró satisfactoriamente
    </td>
    <td width="16" scope="col">
     
    </td>
  </tr>
 <tr>
      <td width="10" scope="col" height="20%">&nbsp;</td>
    <td colspan="2" scope="col" class="Titulo" >
    Muchas gracias!
    </td>
    <td width="16" scope="col">

    </td>
  </tr>
  <tr>
      <td align="center" colspan="3" height="20%">
          <table class="tabla2" width="50%">
              <tr><td>
          <a href="respuesta.do?methodToCall=aceptar">Salir</a>
          </td></tr>
          </table>

      </td>
   
  </tr>
   <tr>
       <td align="center" colspan="3"height="20%">  &nbsp;</td>

  </tr>

</table>


  </td>
  </tr>
</table>
    </body>
</html>
