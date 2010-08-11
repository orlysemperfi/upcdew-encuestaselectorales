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

     <table width="491" border="0" align="center" cellpadding="0" cellspacing="0" class="tabla2">
  <tr>
    <td colspan="3"> <jsp:include page="/header.jsp" /> </td>
  </tr>
  <tr>
    <td colspan="3" >&nbsp;</td>
  </tr>

  <tr>
    <td class="Titulo" colspan="3">
        <table width="459" align="center"   cellpadding="0" cellspacing="0" class="tabla2">
            <td  colspan="3">&nbsp;</td>
      <tr>

          <td width="422" colspan="3" class="Titulo">Su encuesta se registr&oacute; satisfactoriamente! </td>
      </tr>

   <tr>
    <td  colspan="3">&nbsp;</td>
  </tr>

      <tr>

        <td colspan="3" class="Titulo">Gracias por participar</td>
      </tr>

    <tr>
    <td  colspan="3">&nbsp;</td>
  </tr>

      <tr>
        
        <td colspan="3" align="center" height="20%">
         <a href="respuesta.do?methodToCall=aceptar">Salir</a>

    </td>
      </tr>

      <td  colspan="3">&nbsp;</td>
      
    </table>    </td>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
</table>


         <!--
<table border="0" width="100%" height="40%" cellspacing="0" cellpadding="0" >
       <tr>
                    <td colspan="2"> </td>
       </tr>

        <tr>
    <td width="8%">&nbsp;</td>

   <td width="92%" valign="top" align="center">
   <td width="8%">&nbsp;</td>
      </tr>
  <table width="539" height="500" align="center" cellpadding="0" cellspacing="0" class="tabla2">
  <tr>
    <td width="10" scope="col" height="20%">&nbsp;</td>
    <td colspan="5" scope="col" class="Titulo" >
    Su encuesta se registró satisfactoriamente
    </td>
    <td width="16" scope="col">
     &nbsp;
    </td>
  </tr>

  <tr>
    <td width="10" scope="col" height="20%">&nbsp;</td>
    <td colspan="5" scope="col" class="Titulo" >
    Muchas gracias!
    </td>
    <td width="16" scope="col">
    &nbsp;
    </td>
  </tr>

  
      <td align="center" colspan="5" height="20%">
          <table  width="100%">
           <tr>
               <td width="10" scope="col" height="20%">&nbsp;</td>
                <td colspan="5">
                <a href="respuesta.do?methodToCall=aceptar">Salir</a>
                </td>
                <td width="10" scope="col" height="20%">&nbsp;</td>
            </tr>
          </table>

     
</table>


 
</table>
         -->
    </body>
</html>
