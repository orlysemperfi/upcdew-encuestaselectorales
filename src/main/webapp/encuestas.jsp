
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>

         <script language="javascript1.1">



	function jsAceptar(accion) {


				document.encuestasForm.methodToCall.value = accion;
				document.encuestasForm.submit();

		}




	</script>
    </head>
    <body>


        <html:form action="/encuestas.do">

            <input name="methodToCall" type="hidden" value="" />

            <html:text property="name"></html:text>
            <html:text property="number"></html:text>

          <html:button property="cmdAceptar" styleClass="botonAceptar" onclick="javascript:jsAceptar('aceptar');">
            asdasdasd
	 </html:button>

        </html:form>

        <h1>Hello World!</h1>
    </body>
</html>