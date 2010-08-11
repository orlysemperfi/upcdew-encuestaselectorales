
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




		<style type="text/css">

			/* Custom dialog styles */
			#popup_container.style_1 {
				font-family: Georgia, serif;
				color: #A4C6E2;
				background: #005294;
				border-color: #113F66;
			}

			#popup_container.style_1 #popup_title {
				color: #FFF;
				font-weight: normal;
				text-align: left;
				background: #76A5CC;
				border: solid 1px #005294;
				padding-left: 1em;
			}

			#popup_container.style_1 #popup_content {
				background: none;
			}

			#popup_container.style_1 #popup_message {
				padding-left: 0em;
			}

			#popup_container.style_1 INPUT[type='button'] {
				border: outset 2px #76A5CC;
				color: #A4C6E2;
				background: #3778AE;
			}

		</style>

		<!-- Dependencies -->

		<script type="text/javascript"	src="js/jquery.min.js"></script>
		<script type="text/javascript"	src="js/jquery-ui.min.js"></script>

		<!-- Core files -->
		<script src="js/jquery.alerts.js" type="text/javascript"></script>
		<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css" media="screen" />



<script type="text/javascript">

		$(document).ready( function() {
                $("#alert_button").click( function() {

                    var values = "";
                    var numvalues = 0;
                    var numpregunta = 0;

                  <c:forEach items="${preguntas}" var="pregunta">
                   <c:set var="counterp" value="${counterp + 1}"/>
                 </c:forEach>

                 var totalpreg = "${counterp}";
                 var faltan = "";
                 var termino = false;

                    for (num=0; num < totalpreg; num++)
                    {
                            myOption = -1;
                            numpregunta ++;
                            var preg = document.forms[0].elements['respuestas'+numpregunta];

                            for (i=preg.length-1; i > -1; i--)
                            {
                                if (preg[i].checked)
                                {
                                    myOption = i; i = -1;
                                }
                            }
                            if (myOption == -1)
                            {
                                if (num == totalpreg -1)
                                    faltan += numpregunta;
                                else
                                    faltan += numpregunta + ',';
                            }

                            if (myOption == -1 && num == totalpreg -1) {
                                jAlert("Faltan responder las preguntas: " + faltan,"Validación");
                                return false;
                            }

                            if (myOption != -1 && num == totalpreg -1)
                            {
                                termino = true;
                                break;
                            }

                    }

                  for (num=0; num < document.forms[0].length; num++)
                  {
                      if (document.forms[0].elements[num].name!=undefined)
                      {
                        if(document.forms[0].elements[num].type=='radio' && document.forms[0].elements[num].checked == true)
                        {
                            numvalues ++;
                            values += document.forms[0].elements[num].value + '|';
                        }

                        if(document.forms[0].elements[num].type=='checkbox' && document.forms[0].elements[num].checked == true)
                        {
                            numvalues ++;
                            values += document.forms[0].elements[num].value + "|";
                        }
                      }
                  }

                  document.getElementById('rptas').value = values;

                  if (termino == true)
                  {
                    document.forms[0].action='respuesta.do?methodToCall=registrar';
                    document.forms[0].submit();
                  }


		});



	});

</script>

<script language="JavaScript">
<!--

function getValuesOptions()
{
    var values = "";
    var numvalues = 0;
    var numpregunta = 0;

      <c:forEach items="${preguntas}" var="pregunta">
       <c:set var="counterp" value="${counterp + 1}"/>
     </c:forEach>

     var totalpreg = "${counterp}";
     
        for (num=0; num < totalpreg; num++)
        {            
                myOption = -1;
                numpregunta ++;
                var preg = document.forms[0].elements['respuestas'+numpregunta];

                for (i=preg.length-1; i > -1; i--)
                {
                    if (preg[i].checked)
                    {
                        myOption = i; i = -1;
                    }
                }
                if (myOption == -1) {
                    alert("Faltan preguntas por responder.");
                    return false;
                }

                if (myOption != -1 && num == totalpreg -1)
                {
                    break;
                }

        }
     
          for (num=0; num < document.forms[0].length; num++)
          {
              if (document.forms[0].elements[num].name!=undefined)
              {
                if(document.forms[0].elements[num].type=='radio' && document.forms[0].elements[num].checked == true)
                {
                    numvalues ++;
                    values += document.forms[0].elements[num].value + '|';
                }

                if(document.forms[0].elements[num].type=='checkbox' && document.forms[0].elements[num].checked == true)
                {
                    numvalues ++;
                    values += document.forms[0].elements[num].value + "|";
                }
              }
          }
    
           document.getElementById('rptas').value = values;

           alert("su encuesta se registro satisfactoriamente");
           document.forms[0].action='respuesta.do';
           document.forms[0].submit();
}


-->
</script>


</head>

<body>



     
<table border="0" width="100%" valign="top"  cellspacing="0" cellpadding="0">
<tr>
        <td colspan="2"> <jsp:include page="/header.jsp" /> </td>
</tr>

  <tr>
    <td width="8%">&nbsp;</td>

   <td width="92%" valign="top" align="left">
       
     <html:form action="/encuestas.do">


     <table width="539" border="0" align="center" cellpadding="0" cellspacing="0" class="tabla2">
 
   <input type="hidden" name="idEncuesta" value="${idEncuesta}">
   <input type="hidden" name="rptas" id="rptas">

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
    <td>

      

    </td>
    <td>&nbsp;</td>
  </tr>
</table>


    </html:form>



  </td>
  </tr>

   <tr>

    <td colspan="2" align="center" valign="top">

          <div id="msg"></div>
	<table width="100%" height="33" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>

		<td align="center">
                   <%-- <html:link forward="pregunta3" onclick="checker();">Terminar encuesta</html:link>
                     <html:submit onclick="javascript:document.forms[0].action='respuesta.do'">
			Terminar encuesta
		</html:submit>
                    --%>

                    <a id="alert_button" href="#">Terminar encuesta </a>
                
                </td>
                </tr>
      </table>
	
      
  </tr>


</table>


        
    


      
    </body>
</html>
