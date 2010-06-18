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
<%--<link rel="stylesheet" type="text/css" href="css/pantalla.css">--%>
<link rel="stylesheet" type="text/css" href="css/fuente.css">
</head>

<body>


    <table border="0" width="100%" height="581" cellspacing="0" cellpadding="0">
	<tr>
		<td colspan="3"> <jsp:include page="/header.jsp" /> </td>
	</tr>

  <tr>
    <td width="8%">&nbsp;</td>
    <td width="22%"  style="vertical-align:text-top">
	<%-- Inicio del Menu del Web Site --%>
	<jsp:include page="/menuAdmin.jsp" />
	<%-- Fin Menu del Web Site --%>
   </td>
   <td width="70%" valign="top" align="left">   <p>&nbsp;</p>


       <html:form action="configuracion.do">



        <table width=700 border="1" align="center" cellpadding="0" cellspacing="0" class="tabla1" >

<tr >
<td class="letrast2" style="width: 462px">Descripción encuesta
</td>
<td class="letrast2" style="width: 130px">Estado
</td>
<td class="letrast2">Ver&nbsp; Reportes</td>
</tr>

<tr class="subtitulosTabla">
<td style="height: 20px; width: 462px;">Encuestas Municipales 2008
</td>
<td style="height: 20px; width: 130px; text-align: center;">Inactivo
</td>
<td style="height: 20px; text-align: center;"><a href="configuracion.do?methodToCall=consultar&id=1" onclick="f_fotos42();"> <img src=images/iconos/search.gif> </a>
</td>
</tr>

<tr class="subtitulosTabla">
<td style="width: 462px">Encuestas Municipales 2009
</td>
<td style="width: 130px; height: 20px; text-align: center">Inactivo
</td>
<td style="height: 20px; text-align: center;"> <a href="configuracion.do?methodToCall=consultar&id=2"><img src=images/iconos/search.gif></a>
</td>
</tr>


<tr class="subtitulosTabla">
<td style="width: 462px">Encuestas Municipales 2010
</td>
<td style="width: 130px; height: 20px; text-align: center">Activo
</td>
<td style="height: 20px; text-align: center;"><a href="configuracion.do?methodToCall=consultar&id=3"> <img src=images/iconos/search.gif id="IMG1" onclick="return IMG1_onclick()"></a>
</td>
</tr>


</table>

 

    </html:form>



    </td>
  </tr>
</table>

   
</body>
</html>