<%-- 
    Document   : configuracionDetalle
    Created on : 18/06/2010, 03:25:36 AM
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


           <table>

               <tr> <td> Poblacion </td> <td>  </td>   </tr>
                <tr> <td>Fecha Inicio  </td> <td>  </td>   </tr>
                 <tr> <td>Fecha Fin  </td>  <td>  </td>  </tr>
                  <tr> <td>  </td>  <td>  </td>  </tr>

           </table>


      </html:form>



    </td>
  </tr>
</table>

    </body>
</html>
