<%-- 
    Document   : Documentos
    Created on : 6/10/2019, 05:59:25 PM
    Author     : NATALI
--%>



<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="Controlador.Conexion"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
     <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" type="image/png" href="img/logop.png">
        <link rel="apple-touch-icon" sizes="180x180" href="img/logop.png">
        <link rel="icon" type="image/png" href="img/favicon.png" sizes="32x32">

        <title>Pixel Brant</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
        <!-- Custom styles for this template -->
        <style>
            @font-face {
                font-family: 'caviardreamsregular';
                src: url('vendor/CaviarDreams-webfont.woff') format('woff')
            }
        </style>
        <link href="css/style.css" rel="stylesheet">



    </head>
    <body>
        
       
        
        <section style="padding-top: 120px; padding-bottom:40px">
            <div class="container section-header">
               
                <h1 class="display-3 section-title">Facturación</h1>
            </div>
        </section>
          <section>
              
              <div class="container">
                <form action="ReporteFactura.jsp" method="post" target="_blank" name="Facturacion">
                    <div class="row">
                        <div class="col-lg-3">
                        </div>
                        
             <div class="col-lg-6">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">Cliente*</span>
                                </div>
                                <select class="custom-select" id="txtEmpleado" name="txtEmpresa">
                                     <option>Elige el Cliente</option>
                                   <%
                                        Conexion aee = new Conexion();
                                        PreparedStatement psQuery1ee = null;
                                        String strQuery1ee = "select id_clien, nombre from cliente";
                                        psQuery1ee = aee.getConexion().prepareStatement(strQuery1ee);
                                        ResultSet rsee = psQuery1ee.executeQuery();
                                        while (rsee.next()) {
                                    %>
                                    <option value="<%=rsee.getString(1)%>"><%=rsee.getString(2)%></option>
                                    <%}%>                                       
                                </select>
                            </div>
                                
                              <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">Mes*</span>
                                </div>
                                <select class="custom-select" id="txtServicio" name="txtMes">
                                    <option>Elige el mes a facturar</option>
                                    <%
                                        Conexion aec = new Conexion();
                                        PreparedStatement psQuery1ec = null;
                                        String strQuery1ec = "SELECT DISTINCT MONTH(FECHA_INICIO), MONTHNAME    (FECHA_INICIO) FROM clieser_acti";
                                        psQuery1ec = aec.getConexion().prepareStatement(strQuery1ec);
                                        ResultSet rsec = psQuery1ec.executeQuery();
                                        while (rsec.next()) {
                                    %>
                                    <option value="<%=rsec.getString(1)%>"><%=rsec.getString(2)%></option>
                                    <%}%>                                       
                                </select>
                            </div>
                                <div class="pull-right">
                                    <input type="submit" class="btn btn-primary" style="color:#ffffff" value="FACTURAR" name="opc" id="GUARDAR">
                                    <a data-toggle="collapse" href="#collapseCreate" class="btn btn-info" style="color:#ffffff" id="btnCancel" onclick="return cancel()"><i class="fa fa-times" ></i> CANCELAR</a>
                                </div>
                           

                                </div>


                            </div>
                        </div>
          

                
                
            </div>

        </section>
    </body>
</html>
