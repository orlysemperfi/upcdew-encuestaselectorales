<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>

<%
String nextJSP = "/encuestas.do?methodToCall=aceptar";
RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
dispatcher.forward(request,response);
%>