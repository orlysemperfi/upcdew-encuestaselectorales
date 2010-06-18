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
<td style="height: 20px; text-align: center;"><a href="" onclick="f_fotos42();"> <img src=images/iconos/search.gif> </a>
</td>
</tr>

<tr class="subtitulosTabla">
<td style="width: 462px">Encuestas Municipales 2009
</td>
<td style="width: 130px; height: 20px; text-align: center">Inactivo
</td>
<td style="height: 20px; text-align: center;"> <a href="reportea.htm"><img src=images/iconos/search.gif></a>
</td>
</tr>


<tr class="subtitulosTabla">
<td style="width: 462px">Encuestas Municipales 2010
</td>
<td style="width: 130px; height: 20px; text-align: center">Activo
</td>
<td style="height: 20px; text-align: center;"><a href="reportea.htm"> <img src=images/iconos/search.gif id="IMG1" onclick="return IMG1_onclick()"></a>
</td>
</tr>


</table>


<table width="486" border="0" align="left" cellpadding="0" cellspacing="0" class="tabla2">
 
  <tr>
    <th width="41" scope="col">&nbsp;</th>
    <th colspan="" align="center" class="span-12 SeccionCap" scope="col" ><div align="center">Registro de Encuesta </div></th>

  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
	<td>&nbsp;</td>
  </tr>
  <tr>

    <td width="232" colspan="5" align="center"  class="subtitulos"><div align="center">Seleccione encuesta a configurar</div></td>

  </tr>

  <tr>
    <td>&nbsp;</td>
    <td colspan="2" rowspan="3" align="center" valign="top"><table width="435" border="0" align="center" cellpadding="0" cellspacing="0" >
      <tr>
        <td width="1">&nbsp;</td>
        <td width="89" class="subtitulosMayus"><div align="left">Encuesta </div></td>
        <td colspan="2">
			 <div align="left">
			  <select name="" id="" style="width:250px">
			    <option value="" selected="selected">Encuesta Municipal</option>
			    <option value="" selected="selected">Encuesta Presidencial</option>
			    <option value="" selected="selected">Encuesta de Calidad de Servicio</option>
			    <option value="" selected="selected">Encuesta de Nivel Educativo</option>
				 <option value="" selected="selected">SELECCIONE</option>
		      </select>
            </div></td>
        <td width="25">&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="subtitulosMayus"><div align="left">Ubigeo</div></td>
        <td class="subtitulosOpc" colspan="2">
			<div align="left">
			  <select name="" id="" style="width:250px">
			    <option value="" selected="selected">Lima</option>
			    <option value="" selected="selected">Comas</option>
			    <option value="" selected="selected">Los Olivos</option>
			    <option value="" selected="selected">San Isidro</option>
			    <option value="" selected="selected">San Borja</option>
				 <option value="" selected="selected">Monterrico</option>
				 <option value="" selected="selected">SELECCIONE</option>
		      </select>
            </div></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="subtitulosMayus"><div align="left">Poblacion</div></td>
        <td width="182" align="left" colspan="2" ><div align="left">
			  <input
				id=""
				type="text"
				style="width:80px"
				maxlength="11"
				disabled
				/>
		    </div>	</td>
        <td>&nbsp;</td>
      </tr>

      <tr>
        <td>&nbsp;</td>
        <td class="subtitulosMayus"><div align="left">Fecha Inicio</div></td>
        <td >
		<form action="#" method="get">
			<div align="left">

		<input type="text" name="date" id="f_date_c" readonly="1" />
		<img src="images/img.gif"  id="f_trigger_c" style="cursor: pointer; border: 1px solid red;" title="Date selector"
                                                                                       /></div>
			</form>				</td>


        <td>&nbsp;</td>
		  <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
       <td class="subtitulosMayus"><div align="left">Fecha Fin</div></td>
        <td >
		<form action="#" method="get">
			<div align="left">

		<input type="text" name="date" id="f_date_d" readonly="1" />
		<img src="images/img.gif"  id="f_trigger_d" style="cursor: pointer; border: 1px solid red;" title="Date selector"
                                                                                       /></div>
			</form>				</td>


        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
       <td class='etiqueta'>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><table width="200" border="0">
          <tr>
            <td><br /></td>
			<td>&nbsp;</td>
            <td><img src="images/normal/btnGuardar.jpg" width="110" height="30" />
               <%-- <img src="images/normal/btnCancelar.jpg" width="110" height="30" />--%>
            </td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>

		    </table>		</td>
        <td>&nbsp;</td>
  </tr>
  <tr>
        <td>&nbsp;</td>
        <td colspan="3">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>

</table>

    </html:form>
</body>
</html>