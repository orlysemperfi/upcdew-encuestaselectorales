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

<script language="JavaScript">
<!--
function checker()
{

    var radio_choice1 = false;

    for (counter = 0; counter < document.forms[0].number.length; counter++)
    {
        if (document.forms[0].number[counter].checked)
            radio_choice1 = true;
    }


    if (!radio_choice1)
    {
         document.getElementById("msg").innerHTML="Debe seleccionar una encuesta.";
        
    }
    else
    {
         document.forms[0].action='Preguntas.do?methodToCall=iniciar';
         document.forms[0].submit();

    }
}


-->
</script>

</head>

<body>
<form action="Preguntas.do?methodToCall=iniciar" method="post">


<table border="0" width="100%" height="581" cellspacing="0" cellpadding="0"  class="tabla2">
<tr>
        <td colspan="2"> <jsp:include page="/header.jsp" /> </td>
</tr>

  <tr>
    <td width="8%">&nbsp;</td>

   <td width="92%" valign="top" align="left">

  <table width="539" border="0" align="center" cellpadding="0" cellspacing="0" class="tabla2">
  <tr>
  
    <td colspan="4" scope="col" class="letrast" >Encuestas por distrito </td>
  
  </tr>

    <tr>
    <td>&nbsp;</td>
    <td colspan="2" class="subtitulosMayus">Elija la encuesta que desea empezar:</td>
    <td>&nbsp;</td>
  </tr>
  <tr><td colspan="4" class="subtitulosOpc">&nbsp;</td></tr>


              <c:forEach var="encuesta" items="${encuestas}">
                  <tr>

                     <td>&nbsp;</td>

                     <td class="subtitulosOpc"><div align="center">
                        <input name="number" type="radio" value="${encuesta.idEncuesta}" />
                       

        </div>

                     </td>


                      <td class="subtitulosOpc"> ${encuesta.nombre}</td>
                      <td>&nbsp;</td>

                  </tr>
            </c:forEach>
        <tr>

         <tr><td colspan="4">&nbsp;</td></tr>
    <tr>
    <td>&nbsp;</td>
    <td colspan="2" rowspan="3" align="center" valign="top">

        <div id="msg"></div>
	<table width="400" height="33" border="0"  align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center">

          
                      <input type="submit" name="Empezar encuesta" value="Empezar encuesta" onclick="checker();"/>
             <!--   <a href="Preguntas.do" class="enlaces">Empezar encuesta</a>-->
       

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