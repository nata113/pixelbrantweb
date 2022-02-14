<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="net.sf.jasperreports.engine.*" %> 
<%@ page import="java.util.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="java.sql.*" %> 

<% /*Parametros para realizar la conexión*/ 
Connection conexion; 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
conexion = DriverManager.getConnection("jdbc:mysql://us-cdbr-east-05.cleardb.net:3306/heroku_a843b826cdcfda0","b458be41544c88","9d5076ed");
/*Establecemos la ruta del reporte*/ 
File reportFile = new File(application.getRealPath("reportes/report.jasper")); 
/* No enviamos parámetros porque nuestro reporte no los neceita asi que escriba 
cualquier cadena de texto ya que solo seguiremos el formato del método runReportToPdf*/ 
Map parameters = new HashMap();
/*Capturamos el valor de nuestra formulario que es el codigo del cliente que es un
varchar(5), lo almacenamos en una String*/
String empresa=request.getParameter("txtEmpresa");
/*Digitamos la siguiente linea de codigo entre parentesis ira el parametro que agregamos en nuestro reporte
llamado $P{CODIGO}, pero solo se escribira "CODIGO", el String que capturamos lo colocamos, en este caso el 
reporte solo nos pide un parametro*/
parameters.put("EMPRESA", empresa); 
String mes=request.getParameter("txtMes");
/*Digitamos la siguiente linea de codigo entre parentesis ira el parametro que agregamos en nuestro reporte
llamado $P{CODIGO}, pero solo se escribira "CODIGO", el String que capturamos lo colocamos, en este caso el 
reporte solo nos pide un parametro*/
parameters.put("MES", mes); /*Enviamos la ruta del reporte, los parámetros y la conexión(objeto Connection)*/ 
byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conexion); 
/*Indicamos que la respuesta va a ser en formato PDF*/ response.setContentType("application/pdf");
response.setContentLength(bytes.length); ServletOutputStream ouputStream = response.getOutputStream(); 
ouputStream.write(bytes, 0, bytes.length); /*Limpiamos y cerramos flujos de salida*/ ouputStream.flush(); 
ouputStream.close(); %>