<%-- 
    Document   : mainPrincipalUser
    Created on : 13/06/2010, 10:01:00 AM
    Author     : cramirez
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%--<link rel="stylesheet" type="text/css" href="css/estilos.css">
<link rel="stylesheet" type="text/css" href="css/pantalla.css">
<link rel="stylesheet" type="text/css" href="css/fuente.css">--%>

<title></title>
</head>
<body>

<table border="0" width="100%" height="581" cellspacing="0" cellpadding="0">
	<tr>
		<td colspan="2"> <jsp:include page="/header.jsp" /> </td>
	</tr>

  <tr>
    <td width="8%">&nbsp;</td>
    
   <td width="92%" valign="top" align="left">   <p>&nbsp;</p>
      <jsp:include page="/pregunta1.jsp" />
    </td>
  </tr>
</table>

</body>
</html>
