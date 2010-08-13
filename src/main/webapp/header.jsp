
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<table width="1041" border="0" align="center"   cellpadding="0" cellspacing="0" class="tabla2">
  <tr>
    <th  scope="col"><img src="images/cabecera.png" width="1050" height="80" /></th>
  </tr>
  <tr >

    <td  class="td4">
        <table width="1040" border="0" align="center">
            <tr>
                <td align="left" width="400" class="td4">
                    <div id="fecha">
                         <script languaje="JavaScript">
                                            var mydate=new Date()
                                            var year=mydate.getYear()
                                            if (year < 1000)
                                            year+=1900
                                            var day=mydate.getDay()
                                            var month=mydate.getMonth()
                                            var daym=mydate.getDate()
                                            if (daym<10)
                                            daym="0"+daym
                                            var dayarray=new Array("Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado")
                                            var montharray=new Array("enero","febrero","marzo","abril","mayo","junio","julio","agosto","setiembre","octubre","noviembre","diciembre")
                                            document.write(dayarray[day]+", "+daym+" de "+montharray[month]+" del "+year)

                          </script>

                    </div>

                </td>
                <td align="right" width="600" class="td4"><div id="fecha">
                     <c:if test="${usuario.rol=='1'}">
                     <img src="images/ico_home_over.gif" class="icono" /><a  title="ir al inicio" class="Inicio" href="configuracion.do?methodToCall=iniciar">Inicio</a>  </c:if>
                     <img src="images/cerrar.gif" class="icono" style="width: 22px; height: 19px" /><a   title="cerrar sesión" class="Inicio" href="<%=request.getContextPath()%>/logoutAction.do?methodToCall=iniciar">Cerrar Sesión</a>
                     <img class="icono" src="images/users.gif" /> <bean:write  name="usuario" property="nombre" scope="session" /> ,  <bean:write name="usuario" property="apellido" scope="session" /> -



                        <c:choose>
                              <c:when test="${usuario.rol=='1'}">
                                Administrador
                              </c:when>
                              <c:otherwise>
                                Encuestado
                              </c:otherwise>
                        </c:choose>
                            </div>
                </td>
            </tr>
        </table>
    </td>
  </tr>

</table>
