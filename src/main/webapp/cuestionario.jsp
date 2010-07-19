
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


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

function getValuesOptions()
{
    var values = "";

      for (num=0; num < document.forms[0].length; num++)
      {
          if (document.forms[0].elements[num].name!=undefined)
          {
            if(document.forms[0].elements[num].type=='radio' && document.forms[0].elements[num].checked == true)
            {
                values += document.forms[0].elements[num].value + '|';
            }

            if(document.forms[0].elements[num].type=='checkbox' && document.forms[0].elements[num].checked == true)
            {
                values += document.forms[0].elements[num].value + "|";
            }
          }
      }
       document.getElementById('rptas').value = values;
       document.forms[0].action='respuesta.do';
       document.forms[0].submit();
}


-->
</script>


</head>

<body>


<html:form action="/encuestas.do">
     
<table border="0" width="100%" height="581" cellspacing="0" cellpadding="0">
<tr>
        <td colspan="2"> <jsp:include page="/header.jsp" /> </td>
</tr>

  <tr>
    <td width="8%">&nbsp;</td>

   <td width="92%" valign="top" align="left">
       
       


  <table width="539" border="0" align="center" cellpadding="0" cellspacing="0" class="tabla2">
 
   <input type="hidden" name="idEncuesta" value="${idEncuesta}">
   <input type="hidden" name="rptas">

   <c:forEach items="${preguntas}" var="pregunta">
       <c:set var="counter" value="${counter + 1}"/>
    <tr>
    <td>&nbsp;</td>
    <td colspan="2" class="subtitulosMayus">${counter}- ${pregunta.descripcion}
  
    </td>
    <td>&nbsp;</td>
  </tr>

           
            <tr>
                 <td>&nbsp;</td>

                 <c:if test="${pregunta.tipo == 1}">
                <td>
                    <table>

                    <c:forEach items="${pregunta.opciones}" var="opcion">
                        
                         <tr>
                        <td>&nbsp;</td>
                        <td class="subtitulosOpc"><div align="center">
                            <input name="respuestas${counter}" id="respuestas${counter}" type="radio" value="${pregunta.idPregunta}-${opcion.idOpcion}" />
                        </div></td>
                        <td class="subtitulosOpc">${opcion.descripcion}</td>
                        <td>&nbsp;</td>
                      </tr>

                   
                    </c:forEach>

                   </table>
                </td>
                </c:if>


                <c:if test="${pregunta.tipo == 2}">
                <td>
                    <table>

                    <c:forEach items="${pregunta.opciones}" var="opcion">

                       <tr>
                        <td>&nbsp;</td>
                        <td class="subtitulosOpc"><div align="center">
                            <input name="respuestas${counter}" id="respuestas${counter}" type="checkbox" value="${pregunta.idPregunta}-${opcion.idOpcion}" />
                        </div></td>
                        <td class="subtitulosOpc">${opcion.descripcion}</td>
                        <td>&nbsp;</td>
                      </tr>

                   
                    </c:forEach>

                   </table>
                </td>
                </c:if>


                 <td>&nbsp;</td>
            </tr>
</c:forEach>


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
                   <%-- <html:link forward="pregunta3" onclick="checker();">Terminar encuesta</html:link>
                     <html:submit onclick="javascript:document.forms[0].action='respuesta.do'">
			Terminar encuesta
		</html:submit>
                    --%>

                 <a href="#" onclick="getValuesOptions();">Terminar encuesta </a>
                
                </td>
                </tr>
      </table>
	
      
  </tr>


</table>


        
    


</html:form>

      
    </body>
</html>
