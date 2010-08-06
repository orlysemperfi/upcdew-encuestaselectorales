<%-- 
    Document   : MonitoreoEncuesta
    Created on : 17/06/2010, 09:13:07 PM
    Author     : Gaby
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<script src="js/jquery.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/estilos.css">
<link rel="stylesheet" type="text/css" href="css/pantalla.css">
<link rel="stylesheet" type="text/css" href="css/fuente.css">
<title>Untitled Document</title>
</head>

 <%
    String id=request.getParameter("id");
    if(id==null){
        id="1";
        }

    %>
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



<html:form >

    

            <table  align="center" border="0" cellpadding="0" cellspacing="0" class="tabla1" width="100%">

                <TR>
                    <TD align="center">
                        <iframe width="400" height="300" name="report1" src='Reporte01Monitoreo.jsp?id=<%=id%>'></iframe>
                        <BR />
                        <a href="#">Exportar a PDF <img src="images/pdfIcon.jpg" /></a>
                    </TD>
                   <TD align="center">
                        <iframe width="400" height="300" name="report2" src='Reporte02Monitoreo.jsp?id=<%=id%>'></iframe>
                        <BR />
                      <a href="#">Exportar a PDF <img src="images/pdfIcon.jpg" /></a>
                    </TD>
                </TR>
                 <TR>

                        <TD align="center">
                        <iframe width="400" height="300" name="report4" src='Reporte04Monitoreo.jsp?id=<%=id%>'></iframe>
                        <BR />
                     <a href="#">Exportar a PDF <img src="images/pdfIcon.jpg" /></a>
                    </TD>
                    <TD align="center">
                        <iframe width="400" height="300" name="report3" src='Reporte03Monitoreo.jsp?id=<%=id%>'></iframe>
                        <BR />
                     <a href="#">Exportar a PDF <img src="images/pdfIcon.jpg" /></a>
                    </TD>
                
                </TR>

                <tr> <td colspan="2">
                                     <center>

                                         <a style="cursor:hand" onclick="window.history.back();"> Ver Listado de Encuestas </a>
                                      </center>
                                 </td></tr>
            </table>

   </html:form>


            </td>
    </tr>
</table>


</body>

</html>
