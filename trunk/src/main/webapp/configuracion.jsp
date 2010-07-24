<%--
    Document   : configuracion
    Created on : 13/06/2010, 08:33:21 AM
    Author     : cramirez
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
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
    <link rel="stylesheet" type="text/css" href="css/fuente.css">
</head>

<body>


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
            <td  valign="top" align="left">   <p>&nbsp;</p>


               <html:form action="configuracion.do">

                <table width=800 border="1" align="center" cellpadding="0" cellspacing="0" class="tabla1" >

                    <tr>
                        <td class="letrast2" style="width: 500px">Descripción encuesta </td>
                        <td class="letrast2" style="width: 110px">Estado</td>
                        <td class="letrast2" style="width: 110px">Fecha Inicio</td>
                        <td class="letrast2" style="width: 110px">Fecha Final</td>
                        <td class="letrast2" style="width: 110px">Población</td>
                        <td class="letrast2" style="width: 100px">Configurar</td>
                        <td class="letrast2" style="width: 100px">Monitoreo</td>
                        <td class="letrast2" style="width: 100px">Ver&nbsp; Reportes</td>
                    </tr>


                      <c:forEach var="encuesta" items="${encuestas}">
                          <tr class="subtitulosTabla">

                        <td style="height: 20px; width: 462px;">${encuesta.nombre}</td>
                        <td style="height: 20px; width: 130px; text-align: center;">Activo </td>
                        <td style="height: 20px; width: 130px; text-align: center;">${encuesta.fechaInicio}</td>
                        <td style="height: 20px; width: 130px; text-align: center;">${encuesta.fechaFin}</td>
                        <td style="height: 20px; width: 130px; text-align: center;">${encuesta.muestra}</td>
                        <td style="height: 20px; text-align: center;"><a href="configuracion.do?methodToCall=configurar&idEncuesta=1"> <img src="images/iconos/settings.png"   style="text-decoration:none"> </a>  </td>
                        <td style="height: 20px; text-align: center;"><a href="monitoreoEncuesta.do?methodToCall=iniciar&idEncuesta=1"> <img src="images/iconos/computer.png" style="text-decoration:none"> </a>  </td>
                        <td style="height: 20px; text-align: center;"><a href="reporte.do?methodToCall=iniciar&idEncuesta=1&descripcion='Elecciones Municipales 2010 - Sector Alto'"> <img src="images/iconos/chart.png" style="text-decoration:none"> </a>  </td>

                            
                          </tr>
                    </c:forEach>
<!--
                    <tr class="subtitulosTabla">
                        <td style="height: 20px; width: 462px;">Elecciones Municipales 2010 - Sector Alto</td>
                        <td style="height: 20px; width: 130px; text-align: center;">Inactivo </td>
                        <td style="height: 20px; width: 130px; text-align: center;">01/06/2010 </td>
                        <td style="height: 20px; width: 130px; text-align: center;">31/06/2010 </td>
                        <td style="height: 20px; width: 130px; text-align: center;">11</td>
                        <td style="height: 20px; text-align: center;"><a href="configuracion.do?methodToCall=configurar&idEncuesta=1"> <img src="images/iconos/settings.png"   style="text-decoration:none"> </a>  </td>
                        <td style="height: 20px; text-align: center;"><a href="monitoreoEncuesta.do?methodToCall=iniciar&idEncuesta=1"> <img src="images/iconos/computer.png" style="text-decoration:none"> </a>  </td>
                        <td style="height: 20px; text-align: center;"><a href="reporte.do?methodToCall=iniciar&idEncuesta=1&descripcion='Elecciones Municipales 2010 - Sector Alto'"> <img src="images/iconos/chart.png" style="text-decoration:none"> </a>  </td>
                    </tr>

                    <tr class="subtitulosTabla">
                        <td style="width: 462px">Elecciones Municipales 2010 - Sector Medio</td>
                        <td style="height: 20px; width: 130px; text-align: center">Inactivo </td>
                        <td style="height: 20px; width: 130px; text-align: center;">01/06/2010 </td>
                        <td style="height: 20px; width: 130px; text-align: center;">31/06/2010 </td>
                        <td style="height: 20px; width: 130px; text-align: center;">8 </td>
                        <td style="height: 20px; text-align: center;"><a href="configuracion.do?methodToCall=configurar&idEncuesta=2"> <img src="images/iconos/settings.png" style="text-decoration:none"> </a>  </td>
                        <td style="height: 20px; text-align: center;"><a href="MonitoreoEncuesta.do?methodToCall=iniciar&idEncuesta=2"> <img src="images/iconos/computer.png" style="text-decoration:none"> </a>  </td>
                        <td style="height: 20px; text-align: center;"><a href="reporte.do?methodToCall=iniciar&idEncuesta=2&descripcion='Elecciones Municipales 2010 - Sector Medio'"><img src="images/iconos/chart.png" style="text-decoration:none"></a>   </td>
                   </tr>


                    <tr class="subtitulosTabla">
                        <td style="width: 462px">Elecciones Lima Sur 2010 - II  </td>
                        <td style="width: 130px; height: 20px; text-align: center">Activo </td>
                        <td style="height: 20px; width: 130px; text-align: center;">15/06/2010 </td>
                        <td style="height: 20px; width: 130px; text-align: center;">15/07/2010 </td>
                        <td style="height: 20px; width: 130px; text-align: center;">3 </td>
                        <td style="height: 20px; text-align: center;"><a href="configuracion.do?methodToCall=configurar&idEncuesta=3"> <img src="images/iconos/settings.png" style="text-decoration:none"> </a>  </td>
                        <td style="height: 20px; text-align: center;"><a href="MonitoreoEncuesta.do?methodToCall=iniciar&idEncuesta=3"> <img src="images/iconos/computer.png" style="text-decoration:none"> </a>  </td>
                        <td style="height: 20px; text-align: center;"><a href="reporte.do?methodToCall=iniciar&idEncuesta=3&descripcion='Elecciones Lima Sur 2010 - II'"> <img src="images/iconos/chart.png" style="text-decoration:none"></a> </td>
                    </tr>

                   <tr class="subtitulosTabla">
                        <td style="width: 462px">Elecciones lima Norte 2010 -II </td>
                        <td style="width: 130px; height: 20px; text-align: center">Activo </td>
                        <td style="height: 20px; width: 130px; text-align: center;">15/06/2010 </td>
                        <td style="height: 20px; width: 130px; text-align: center;">15/07/2010 </td>
                        <td style="height: 20px; width: 130px; text-align: center;">3 </td>
                        <td style="height: 20px; text-align: center;"><a href="configuracion.do?methodToCall=configurar&idEncuesta=4"> <img src="images/iconos/settings.png" style="text-decoration:none"> </a>  </td>
                        <td style="height: 20px; text-align: center;"><a href="MonitoreoEncuesta.do?methodToCall=iniciar&idEncuesta=4"> <img src="images/iconos/computer.png" style="text-decoration:none"> </a>  </td>
                        <td style="height: 20px; text-align: center;"><a href="reporte.do?methodToCall=iniciar&idEncuesta=4&descripcion='Elecciones lima Norte 2010 -II'"> <img src="images/iconos/chart.png" style="text-decoration:none"></a> </td>
                    </tr>

-->

        </table>



               </html:form>



            </td>
    </tr>
</table>


</body>
</html>