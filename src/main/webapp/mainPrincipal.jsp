<%-- 
    Document   : mainPrincipal
    Created on : 13/06/2010, 08:55:28 AM
    Author     : cramirez
--%>

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
		<td colspan="3"> <jsp:include page="/header.jsp" /> </td>
	</tr>

  <tr>
    <td width="8%">&nbsp;</td>
    <td width="22%"  valign="top">
	<%-- Inicio del Menu del Web Site --%>
	<jsp:include page="/menuAdmin.jsp" />
	<%-- Fin Menu del Web Site --%>
   </td>
   <td width="70%" valign="top" align="left">   <p>&nbsp;</p>
      <jsp:include page="/configuracion.jsp" />
    </td>
  </tr>
</table>

</body>
</html>
