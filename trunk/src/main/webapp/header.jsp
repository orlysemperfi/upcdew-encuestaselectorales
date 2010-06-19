<%-- 
    Document   : header
    Created on : 13/06/2010, 08:49:19 AM
    Author     : cramirez
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<table width="1041" border="0" align="center"   cellpadding="0" cellspacing="0" class="tabla2">
  <tr>
    <th height="75" colspan="3" scope="col"><img src="images/cabecera.png" width="1050" height="80" />
  </th>
  </tr>
  <tr >
    <td width="209"  class="td4">&nbsp;</td>
    <td width="425"  class="td4">&nbsp;</td>
    <td width="415"  class="td4"><table width="315" border="0" align="center">
      <tr  class="td4">
        <th width="200" class="td4" scope="col" ><div align="right"><a href="" class="enlaces2">
                    Usuario:
     <c:choose>
      <c:when test="${usuario.rol=='1'}">
     Administrador
      </c:when>

      <c:otherwise>
     Encuestado
      </c:otherwise>
    </c:choose>

                </a></div></th>
        <th width="200" scope="col" class="td4"><div align="right"><a href="login.jsp" class="enlaces2">Cerrar Sesi&oacute;n</a> </div></th>
      </tr>
    </table></td>
  </tr>

</table>
