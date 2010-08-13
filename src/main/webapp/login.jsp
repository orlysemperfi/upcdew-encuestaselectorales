<%-- 
    Document   : Login
    Created on : 12/06/2010, 11:28:31 PM
    Author     : cramirez
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <script src="js/jquery.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>
    <script src="js/Utiles.js?ver=1" type="text/javascript"></script>

    <style type="text/css">

			/* Custom dialog styles */
			#popup_container.style_1 {
				font-family: Georgia, serif;
				color: #A4C6E2;
				background: #005294;
				border-color: #113F66;
			}

			#popup_container.style_1 #popup_title {
				color: #FFF;
				font-weight: normal;
				text-align: left;
				background: #76A5CC;
				border: solid 1px #005294;
				padding-left: 1em;
			}

			#popup_container.style_1 #popup_content {
				background: none;
			}

			#popup_container.style_1 #popup_message {
				padding-left: 0em;
			}

			#popup_container.style_1 INPUT[type='button'] {
				border: outset 2px #76A5CC;
				color: #A4C6E2;
				background: #3778AE;
			}

		</style>

    		<!-- Dependencies -->

		<script type="text/javascript"	src="js/jquery.min.js"></script>
		<script type="text/javascript"	src="js/jquery-ui.min.js"></script>

		<!-- Core files -->
		<script src="js/jquery.alerts.js" type="text/javascript"></script>
		<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css" media="screen" />



<link rel="stylesheet" type="text/css" href="css/estilos.css">
  <script type="text/javascript">

    $(document).ready(function () {
      var $dialog;
      PageInit();
         $("#alert_button").click( function() {
       });
    });

    function jsValidar() {
            if(document.forms[0].username.value=='' && document.forms[0].password.value==''){
                 jAlert("Debe de ingresar su Usuario y Contraseña","Validación");
            }else{
                 if(document.forms[0].username.value!=''){
                            if(document.forms[0].password.value!=''){
                                            document.forms[0].action='Usuario.do';
                                            document.forms[0].submit();
                                    }else{
                                          jAlert("Ingrese su Contraseña","Validación");
                                         }
                            }else{
                                  jAlert("Ingrese su Usuario","Validación");
                                 }
                 }
       }

  </script>

<title>Login Sistema de Encuestas</title>
</head>

<body>
 


    <form   action="Usuario.do" method="post">

<table width="825" border="0" align="center" cellpadding="0" cellspacing="0" class="tabla2">
  <tr>
    <th width="10" scope="col">&nbsp;</th>
    <th width="803" scope="col"><img src="images/cabecera.png" width="800" height="80" /></th>
    <th width="10" scope="col">&nbsp;</th>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>
        <table width="200" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <th scope="col">&nbsp;</th>
        <th scope="col">&nbsp;</th>
        <th scope="col">&nbsp;</th>
      </tr>
      <tr>
        <th width="26" scope="col">&nbsp;</th>
        <th width="452" scope="col">&nbsp;</th>
        <th width="15" scope="col">&nbsp;</th>
      </tr>
      <tr>
        <td colspan="3"><img src="images/CuadroSup.png" width="505" height="28" /></td>
        </tr>
      <tr>
        <td rowspan="3" align="left"><img src="images/CuadroIzq.png" width="4" height="269" /></td>
        <td height="26" class="subtitulosPrinc">Autenticaci&oacute;n de Usuarios </td>
        <td rowspan="3" align="right"><img src="images/CuadroDer.png" width="10" height="269" /></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        </tr>
      <tr>
        <td>

            <table width="395" height="160" border="0" align="center">
              <tr>
                <th colspan="2" rowspan="4" align="center" valign="middle" scope="col"><table width="112" border="0">
                    <tr>
                      <th width="102" scope="col"><img src="images/icono_login.jpg" width="102" height="99" /></th>
                    </tr>
                </table>
                </th>
                <td class="subtitulosMayus" scope="col">&nbsp;</td>
                <th class="subtitulosMayus" scope="col">&nbsp;</th>
                <th valign="middle" scope="col">&nbsp;</th>
              </tr>
              <tr>
                <td width="88" class="subtitulosMayus" scope="col">Usuario</td>
              <th class="subtitulosMayus" scope="col">
			  <input
				name="username"
				type="text"
				style="width:110px"
				maxlength="11"
				/>			  </th>
              <th valign="middle" scope="col">&nbsp;</th>
            </tr>
            <tr>
              <td height="38" class="subtitulosMayus">Contrase&ntilde;a</td>
            <th class="subtitulosMayus" scope="col">
			  <input
				name="password"
				type="password"
				style="width:110px"
				maxlength="11"
				/>			</th>
            <th width="30" valign="middle" scope="col">&nbsp;</th>
          </tr>
          <tr>
            <td height="20" class="subtitulosMayus">&nbsp;</td>
            <td align="center">
            
                <input type="button" name="Ingresar" value="Ingresar" onclick="jsValidar()" />

            <!--
            <a href="Principal.html">
             <img class="boton" name="btnIngresar" src="images/normal/btnIngresar.jpg" width="90" height="28"  border="0"/ >
			</a>
                -->
			</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
              <td colspan="4"> <center>${mensaje}</center></td>

           

          </tr>
        </table>

        </td>
        </tr>
      <tr>
        <td colspan="3"><img src="images/CuadroInf.png" width="505" height="28" /></td>
        </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="letrasPequenias">Resoluci&oacute;n de pantalla 1024 x 768 </td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="center" class="tabla2"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="803" height="70">
      <param name="movie" value="sw/prueba.swf" />
      <param name="quality" value="high" />
      <embed src="sw/prueba.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="803" height="70"></embed>
    </object></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td class="td4">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
 </form>
</body>
</html>
