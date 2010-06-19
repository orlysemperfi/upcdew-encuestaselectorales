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



<html:form action="MonitoreoEncuesta.do">

    <table width="493" border="0"   align="center" cellpadding="0" cellspacing="0" >

  <tr>
    <td>&nbsp;</td>
    <td colspan="2"><table width="200" border="1" align="center">
      <tr>
        <td class="subtitulosbd">Encuesta</td>
                <td align="center">	<div align="left">
			  <select name="encuesta" id="" style="width:250px">
			    <option value="" selected="selected">Elecciones Municipales 2010 - Sector Alto</option>
			    <option value="" selected="selected">Elecciones Municipales 2010 - Sector Medio</option>
			    <option value="" selected="selected">Elecciones Lima Sur 2010 - II</option>
			    <option value="" selected="selected">Elecciones lima Norte 2010 -II </option>
			    <option value="" selected="selected">SELECCIONE</option>
		      </select>
          </div></td>
      </tr>
    </table></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td width="232">&nbsp;</td>
    <td width="201">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

  <tr align="left">
    <td><div align="left"></div></td>
    <td colspan="2" rowspan="3" valign="top"><div align="left">
      <table width="819" height="428" border="1" cellpadding="0" cellspacing="0" class="tabla1">
        <tr>

          <td height="209" colspan="2"><a href="" onclick="f_moni_1();"><img src="images/Monitoreo01.png" width="390" height="153" /></a></td>
            <td width="419" colspan="2"><a href="" onclick="f_moni_2();"><img src="images/Monitoreo02.png" width="403" height="163" /></a></td>
          </tr>
        <tr>
          <td height="253" colspan="2"><a href="" onclick="f_moni_3();"><img src="images/Monitoreo3.png" width="387" height="159" /></a></td>
            <td colspan="2"><a href="" onclick="f_moni_4();"><img src="images/Monitoreo04.png" width="415" height="177" /></a></td>
          </tr>
      </table>
    </div></td>
    <td><div align="left"></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

  <tr> <td colspan="2">
                                     <center>

                                           <a href="configuracion.do?methodToCall=iniciar"> Ver Listado de Encuestas </a>
                                      </center>
                                 </td></tr>


</table>
   </html:form>


            </td>
    </tr>
</table>


</body>

</html>
