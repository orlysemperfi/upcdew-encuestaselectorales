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
    String idencuesta=request.getParameter("idEncuesta");
    if(idencuesta==null){
        idencuesta="1";
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



                <form>

    

            <table  align="center" border="0" cellpadding="0" cellspacing="0" class="tabla1" width="80%">

                <TR>
                    <TD align="center">
                        <iframe width="600" height="400" frameborder="0" scrolling="no"
                       name="report1" src='prueba1.jsp?idencuesta=<%=idencuesta%>'></iframe>

                      
                    </TD>
                   <TD align="center">
                            <iframe width="600" height="400" frameborder="0" scrolling="no"
                       name="report2" src='prueba2.jsp?idencuesta=<%=idencuesta%>' ></iframe>
                      
                    </TD>
                </TR>
                 <TR>

                        <TD align="center">
                        <iframe width="600" height="400" name="report4"
                              src='prueba4.jsp?idencuesta=<%=idencuesta%>'   frameborder="0" scrolling="no" ></iframe>
                      
                    </TD>
                    <TD align="center">
                        <iframe width="600" height="400" name="report3"
                            src='prueba3.jsp?idencuesta=<%=idencuesta%>'     frameborder="0" scrolling="no" ></iframe>
                      
                    </TD>
                
                </TR>

                <tr> <td colspan="2">
                                     <center>

                                         <a style="cursor:hand" onclick="window.history.back();"> Ver Listado de Encuestas </a>
                                      </center>
                                 </td></tr>
            </table>
                       


                </form>


            </td>
    </tr>
</table>
                        <script>
                        
                           
                            setTimeout('reporte1()',600);

                                   function reporte1()
                          {

                          var hora=Date();
         
                  window.parent.frames[0].actualizar();
  setTimeout('reporte2()',600);

                          }

                              function reporte2()
                          {
     
                    window.parent.frames[1].actualizar();
  setTimeout('reporte4()',600);

                          }
                    function reporte4()
                          {

                    window.parent.frames[3].actualizar();
  setTimeout('reporte3()',600);

                          }

           function reporte3()
                          {

                    window.parent.frames[2].actualizar();


                          }

        

               
                         
                          </script>

</body>

</html>
