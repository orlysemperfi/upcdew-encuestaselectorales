
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">
        <link rel="stylesheet" type="text/css" href="css/fuente.css">
        <title>JSP Page</title>
    </head>
    <body>
          
        <br><br><br>
        
     <table   border="0" align="center" cellpadding="0" cellspacing="0">

      <tr>
        <td colspan="3"><img src="images/CuadroSup.png"  height="28" /></td>
        </tr>
      <tr>
        <td rowspan="3" align="left"><img src="images/CuadroIzq.png" width="4" height="269" /></td>
        <td   class="subtitulosPrinc">Autenticaci&oacute;n de Usuarios </td>
        <td rowspan="3" align="right"><img src="images/CuadroDer.png" width="10" height="269" /></td>
      </tr>
       <tr>
           <td class="subtitulosMayus" style="vertical-align: text-top; text-align: center;"   > Su sesión a caducado, porfavor sirvase ingresar de nuevo al sistema.</td>
        </tr>
       <tr>
        <td style="vertical-align: text-top; text-align: center;" >

            <img src="images/manito.gif"/>  <a href="<%=request.getContextPath()%>/login.jsp" class="Vinculo">Ir a la ventana de ingreso</a>
        </td>
        </tr>
      <tr>
        <td colspan="3" ><img src="images/CuadroInf.png" width="505" height="28" /></td>
        </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>

    </table>
    </body>
</html>
