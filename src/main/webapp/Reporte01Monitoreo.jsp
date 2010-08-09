<%-- 
    Document   : Reporte01Monitoreo
    Created on : 23-jul-2010, 18:32:00
    Author     : GABY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="net.sf.jasperreports.engine.export.*"%>
<%@ page import="net.sf.jasperreports.engine.util.*"%>
<%@ page import ="net.sf.jasperreports.engine.*"%>
<%@ page import="java.util.*" %>
<%@ page import= "java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="pe.edu.upc.dew.proyectoencuestas.util.MySqlDBConn" %>
<%@ page import="net.sf.jasperreports.j2ee.servlets.ImageServlet" %>

<script>

    function actualizar()
    {
document.location.reload();


}

</script>




<%

String id=request.getParameter("idencuesta");

 Connection con=MySqlDBConn.getConnection();

//File reportFile=new File(application.getRealPath("reportes/reporteg1.jasper"));



Map parameters=new  HashMap();
parameters.put("id",id);

File reportFile=new File(application.getRealPath("reportes/reporteg1.jrxml"));
String jasperName = JasperCompileManager.compileReportToFile(reportFile.getPath());

JasperReport report = (JasperReport) JRLoader.loadObject(jasperName);


JasperPrint print = JasperFillManager.fillReport(report, parameters, con);
// Exportamos el informe a HTML
 JRHtmlExporter exporter = new JRHtmlExporter();

 request.getSession().setAttribute(ImageServlet.DEFAULT_JASPER_PRINT_SESSION_ATTRIBUTE,print);

exporter.setParameter(JRExporterParameter.JASPER_PRINT, print);
OutputStream outputStream = response.getOutputStream();

exporter.setParameter(JRExporterParameter.OUTPUT_STREAM,outputStream);
exporter.setParameter(JRHtmlExporterParameter.IMAGES_URI,"image?image=");


exporter.exportReport();





%>


