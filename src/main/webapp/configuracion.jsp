
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>

    <link rel="stylesheet" type="text/css" href="css/estilos.css">
    <link rel="stylesheet" type="text/css" href="css/fuente.css">
    <link type="text/css" href="css/jquery-ui.css" rel="stylesheet" />

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

  <script type="text/javascript">

    $(document).ready(function () {
      var $dialog;
      PageInit();

         $("#alert_button").click( function() {


       });

    });



               function jsValidar(id,estado,url) {

                //0 iniciado
                //1 terminado
                //2 cancelado
                       if (parseInt(id)==1){
                                     document.forms[0].action=url;
                                     document.forms[0].submit();
                       }

                      if (parseInt(id)==2){
                                if (parseInt(estado)==0){
                                     document.forms[0].action=url;
                                     document.forms[0].submit();
                                }else{

                                 //   alert('El monitoreo solo se puede visualizar en Encuestas iniciadas');
                                 // MostrarMensajeModal('El monitoreo solo se puede visualizar en Encuestas iniciadas');
                                  jAlert("El monitoreo solo se puede visualizar en Encuestas iniciadas","Validación");
                                }

                       }

                      if (parseInt(id)==3){
                                if (parseInt(estado)==1){
                                     document.forms[0].action=url;
                                     document.forms[0].submit();
                                }else{

                                   // alert('No pueden mostrar los reportes hasta que la encuesta no haya sido terminada');
                                 //MostrarMensajeModal('No pueden mostrar los reportes hasta que la encuesta no haya sido terminada');
                                 jAlert("No pueden mostrar los reportes hasta que la encuesta no haya sido terminada","Validación");

                                }
                        }

                    }

    $(function() {
        $('#dialog').dialog({
            autoOpen: false,
            width: 300
        });
    });

    

    function MostrarDialog() {
      $('#dialog').dialog('option', 'modal', true).dialog('open');
      return true;
    }
  </script>
 
   <!--
 <script type="text/javascript">
    function jsValidar(id,estado,url) {

    //0 iniciado
    //1 terminado
    //2 cancelado
           if (parseInt(id)==1){
                         document.forms[0].action=url;
                         document.forms[0].submit();             
           }

          if (parseInt(id)==2){
                    if (parseInt(estado)==0){
                         document.forms[0].action=url;
                         document.forms[0].submit();
                    }else{

                     //   alert('El monitoreo solo se puede visualizar en Encuestas iniciadas');
                      MostrarMensajeModal('El monitoreo solo se puede visualizar en Encuestas iniciadas');
                    }

           }

          if (parseInt(id)==3){
                    if (parseInt(estado)==1){
                         document.forms[0].action=url;
                         document.forms[0].submit();
                    }else{

                       // alert('No pueden mostrar los reportes hasta que la encuesta no haya sido terminada');
                     MostrarMensajeModal('No pueden mostrar los reportes hasta que la encuesta no haya sido terminada');

                    }
            }

        }
</script>

-->
</head>

<body>

    <table border="0" width="100%"  valign="top" cellspacing="0" cellpadding="0" >
	<tr>
            <td > <jsp:include page="/header.jsp" /> </td>
	</tr>

        <tr>

            <td  valign="top" align="left">   <p>&nbsp;</p>


               <html:form action="configuracion.do">

                <table width=800 border="1" align="center" cellpadding="0" cellspacing="0" class="tabla1" >

                    <tr>
                        <td class="letrast2" style="width: 500px">Descripción encuesta </td>
                        <td class="letrast2" style="width: 110px">Estado</td>
                        <td class="letrast2" style="width: 110px">Fecha Inicio</td>
                        <td class="letrast2" style="width: 110px">Fecha Final</td>
                        <td class="letrast2" style="width: 110px">Población</td>
                        <td class="letrast2" style="width: 100px">Configurar</td>
                        <td class="letrast2" style="width: 100px">Monitoreo</td>
                        <td class="letrast2" style="width: 100px">Ver&nbsp; Reportes</td>
                    </tr>


                      <c:forEach var="encuesta" items="${encuestas}">
                          <tr class="subtitulosTabla">

                        <td style="height: 20px; width: 462px;">${encuesta.nombre}</td>
                        <td style="height: 20px; width: 130px; text-align: center;">
                        <c:if test="${encuesta.estado == 0}"> Iniciado </c:if>
                        <c:if test="${encuesta.estado == 1}"> Terminado </c:if>
                        <c:if test="${encuesta.estado == 2}"> Cancelado </c:if>
                        </td>
                        <td style="height: 20px; width: 130px; text-align: center;">${encuesta.fechaInicio}</td>
                        <td style="height: 20px; width: 130px; text-align: center;">${encuesta.fechaFin}</td>
                        <td style="height: 20px; width: 130px; text-align: center;">${encuesta.muestra}</td>
                        <td style="height: 20px; text-align: center;"><a href="javascript:jsValidar('1','${encuesta.estado}','configuracion.do?methodToCall=configurar&idEncuesta=${encuesta.idEncuesta}')"> <img src="images/iconos/settings.png"   style="text-decoration:none"> </a>  </td>
                        <td style="height: 20px; text-align: center;"><a href="javascript:jsValidar('2','${encuesta.estado}','monitoreoEncuesta.do?methodToCall=iniciar&idEncuesta=${encuesta.idEncuesta}')"> <img src="images/iconos/computer.png" style="text-decoration:none"> </a>  </td>
                        <td style="height: 20px; text-align: center;"><a href="javascript:jsValidar('3','${encuesta.estado}','reporte.do?methodToCall=iniciar&idEncuesta=${encuesta.idEncuesta}&descripcion=${encuesta.nombre}&ruta=<%=request.getContextPath()%>')" style="text-decoration:none"> <img src="images/iconos/chart.png"  style="text-decoration:none"> </a>  </td>
  
                          </tr>
                    </c:forEach>


        </table>
 
               </html:form>
 

            </td>
    </tr>
</table>


</body>
</html>