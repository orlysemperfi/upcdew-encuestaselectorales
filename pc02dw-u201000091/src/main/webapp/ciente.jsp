<%-- 
    Document   : ciente
    Created on : 31-jul-2010, 12:37:42
    Author     : GABY
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>${cliente.numerotarjeta}</h1>

        <table border="1">
              <tr>
                <td>NombreCliente</td>
                <td>NumeroTarjeta</td>
            </tr>

                <c:forEach items="${clientes}" var="obj">

                    <tr>
                        <td>${obj.nombrecliente}</td>
                        <td>${obj.numerotarjeta}</td>
                    </tr>
                </c:forEach >

        </table>
                <%=request.getAttribute("cliente")%>

                 <table>
                <c:forEach items="${cliente.cuentas}" var="rol">

                    <tr>
                        <td>${cuenta.idcuenta}</td>
                        <td>${cuenta.estado}</td>
                          <td>${cuenta.tipo}</td>
                            <td>${cuenta.moneda}</td>
                              <td>${cuenta.saldo}</td>
                         <td>

                             <c:if test="${cuenta.tipo=='Soles'}">
                                 Cuenta en S/.
                              </c:if >


                              <c:if test="${cuenta.tipo!='Soles'}">
                                Cuenta en $
                              </c:if >
                         </td>
                    </tr>
                </c:forEach >
        <table>

    </body>
</html>

