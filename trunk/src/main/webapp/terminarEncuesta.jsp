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
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
    <link rel="stylesheet" type="text/css" href="css/fuente.css">

  <link type="text/css" href="css/jquery-ui.css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>
    <script src="js/Utiles.js?ver=1" type="text/javascript"></script>


        
    </head>
    <body>

     <table width="491" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td> <jsp:include page="/header.jsp" /> </td>
      </tr>

      <tr>
        <td class="Titulo" >
            <br><br>
            <table width="459" align="center"   cellpadding="0" cellspacing="0" class="tabla2">

              <tr>

                  <td width="422" colspan="3" class="Titulo">Su encuesta se registr&oacute; satisfactoriamente! </td>
              </tr>

       <tr>   <td  colspan="3">&nbsp;</td>  </tr>

       <tr>

            <td  colspan="3" class="Titulo">Gracias por participar</td>
       </tr>

        <tr>
            <td  colspan="3">&nbsp;</td>
        </tr>

        <tr>
            <td align="center" height="20%"  colspan="3">
             <a href="respuesta.do?methodToCall=aceptar">Salir</a>  </td>
        </tr>
      
    </table>
    </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table> 
    </body>
</html>
