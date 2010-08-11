

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

    <table border="0" width="100%"  cellspacing="0" cellpadding="0">
	<tr>
            <td> <jsp:include page="/header.jsp" /> </td>
	</tr>

    <tr>

            <td  valign="top" align="left">   
                      <center class="Titulo">  ENCUESTA<p></p> <%=request.getAttribute("encuestaDes")%> </center>
                      <br><br>
                      <table width=800 border="1" align="center" cellpadding="0" cellspacing="0" class="tabla1">

                       <c:forEach items="${preguntas}" var="nivel1">

                          <tr>  <td colspan="2" class="subtitulosTabla">${nivel1.desPregunta}</td></tr>
                          <tr>  <td> <br> <center> <img src="images/${nivel1.idEncuesta}${nivel1.idPregunta}.jpg" > </center> </td>

                                <td>
                                    <table>
                                         <c:forEach items="${nivel1.resultado}" var="nivel2">
                                          <tr>
                                              <td>${nivel2.cantidad}</td>
                                              <td>${nivel2.descripcion}</td>

                                          </tr>
                                          </c:forEach>
                                      </table>
                                </td>
                          </tr>

                        </c:forEach>

                          
                      </table>

            </td>
    </tr>
</table>

                      <center>
                        <a href="<%=request.getContextPath()%>/configuracion.do?methodToCall=iniciar"> Ver Listado de Encuestas </a>
                       </center>

  </html:form>
</body>
</html>
