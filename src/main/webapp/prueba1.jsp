<%--
    Document   : prueba2
    Created on : 08-ago-2010, 19:59:39
    Author     : GABY
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<script>
function actualizar()
    {
document.location.reload();


}
</script>


<%
    String idencuesta=request.getParameter("idencuesta");
    if(idencuesta==null){
        idencuesta="1";
        }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <table>

            <tr>
                <td>
          
                </td>
            </tr>
            <tr>
                <td>
      <iframe width="600" height="400" frameborder="0" scrolling="no"
                        src="Reporte01Monitoreo.jsp?idencuesta=<%=idencuesta%>"       name="reposst1" ></iframe>
                </td>
            </tr>

        </table>
    </body>
</html>
