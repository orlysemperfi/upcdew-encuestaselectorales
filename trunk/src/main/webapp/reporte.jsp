<%-- 
    Document   : reporte
    Created on : 19/06/2010, 07:05:36 AM
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">
    <link rel="stylesheet" type="text/css" href="css/fuente.css">
        <title>JSP Page</title>


    </head>

<body>
  <html:form action="reporte.do">

<input name="methodToCall" type="hidden" value="" />

    <table border="0" width="100%" height="581" cellspacing="0" cellpadding="0">
	<tr>
		<td colspan="3"> <jsp:include page="/header.jsp" /> </td>
	</tr>

    <tr>
            <td></td>
             <td></td>
             <!--
            <td width="22%"  style="vertical-align:text-top">
	                <%-- Inicio del Menu del Web Site --%>
	               <%--  <jsp:include page="/menuAdmin.jsp" /> --%>
	                <%-- Fin Menu del Web Site --%>
            </td>-->
            <td  valign="top" align="left">   
                <center class="Titulo">
                    ENCUESTA<p></p> <%=request.getAttribute("encuestaDes")%>
                    </center>

                     <table width=800 border="1" align="center" cellpadding="0" cellspacing="0" class="tabla1" >

                             <tr> <td colspan="2" class="subtitulosTabla"> ¿Cómo considera ud. la gestión actual del Municipio de lima? </td></tr>
                             <tr> <td colspan="2"> <br> <center> <img src="images/reportes/Preg1.jpg"></center>  </td></tr>
                             <tr> <td colspan="2" > <br> </td></tr>
                             <tr> <td colspan="2" class="subtitulosTabla"> ¿Cuál cree ud. que es el principal problema que afecta al Municipio? </td></tr>
                             <tr> <td colspan="2" ><br>  <center> <img src="images/reportes/Preg2.jpg"></center> </td></tr>
                             <tr> <td colspan="2" > <br> </td></tr>
                             <tr> <td colspan="2" class="subtitulosTabla"> Independientemente de sus preferencias políticas, ¿Cuáles considera que son los PRINCIPALES OBJETIVOS que debería tener el futuro alcalde de Lima ?  </td></tr>
                             <tr> <td colspan="2" ><br>  <center> <img src="images/reportes/Preg3.jpg"></center></td></tr>
                             <tr> <td colspan="2" > <br> </td></tr>
                             <tr> <td colspan="2" class="subtitulosTabla"> ¿Cuál es la CUALIDAD principal que según usted debe caracterizar al futuro Alcalde?  </td></tr>
                             <tr> <td colspan="2" ><br>  <center> <img src="images/reportes/Preg4.jpg"></center> </td></tr>
                             <tr> <td colspan="2" > <br> </td></tr>
                             <tr> <td colspan="2" class="subtitulosTabla"> Por quien votaría ud. si las eleccione fueran el dia de mañana? </td></tr>
                             <tr> <td colspan="2" ><br>  <center> <img src="images/reportes/Preg5.jpg"></center> </td></tr>
                             <tr> <td colspan="2" > <br> </td></tr>

                             <tr> <td colspan="2">
                                     <center>

                                           <a href="configuracion.do?methodToCall=iniciar"> Ver Listado de Encuestas </a>
                                      </center>
                                 </td></tr>




                       </table>



            </td>
    </tr>
</table>

                   
                <table>

                   <c:forEach items="${preguntas}" var="nivel1">

                      <tr>
                        <td>${nivel1.idEncuesta}</td>
                        <td>${nivel1.idPregunta}</td>
                        <td>${nivel1.desEncuesta}</td>
                        <td>${nivel1.desPregunta}</td>
                        <td><img src="images/${nivel1.idEncuesta}${nivel1.idPregunta}.jpg" >  </td>

                        
                        <td><table>
                        
                             <c:forEach items="${nivel1.resultado}" var="nivel2">
                              <tr>
                                  <td>${nivel2.cantidad}</td>
                                  <td>${nivel2.descripcion}</td>

                             </tr>
                         </c:forEach>
                       </table> </td>
                      </tr>


                    </c:forEach>
             </table>

  </html:form>
</body>
</html>
