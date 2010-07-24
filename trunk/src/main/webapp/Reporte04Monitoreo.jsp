<%--
    Document   : Reporte01Monitoreo
    Created on : 23-jul-2010, 18:32:00
    Author     : GABY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import ="net.sf.jasperreports.engine.*"%>
<%@ page import="java.util.*" %>
<%@ page import= "java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="pe.edu.upc.dew.proyectoencuestas.util.MySqlDBConn" %>

<%

String id=request.getParameter("id");

 Connection con=MySqlDBConn.getConnection();

File reportFile=new File(application.getRealPath("reportes/reporte4.jasper"));

Map parameters=new  HashMap();
parameters.put("id",id);

byte[] bytes=JasperRunManager.runReportToPdf(reportFile.getPath(),parameters,con);
//byte[] bytes=JasperRunManager.runReportToHtmlFile(reportFile.getPath(),parameters,con);

//byte[] bytes=JasperRunManager.runReportToHtmlFile(reportFile.parameters,conexion);


response.setContentType("application/pdf");
response.setContentLength(bytes.length);
ServletOutputStream ouputStream=response.getOutputStream();
ouputStream.write(bytes,0,bytes.length);

ouputStream.flush();
ouputStream.close();




%>


