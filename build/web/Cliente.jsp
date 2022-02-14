<%-- 
    Document   : Empleado
    Created on : 5/10/2019, 05:31:07 PM
    Author     : luisa.jaramillo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Controlador.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">

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

    <body >

        <section style="padding-top: 120px; padding-bottom:40px">
            <div class="container section-header">
                <div class="pull-right" style="margin-top: -20px">
                    <a data-toggle="collapse" href="#collapseCreate" role="button" aria-expanded="false" aria-controls="collapseCreate"
                       class="btn btn-primary btn-lg mt-5" name="Crear" style="margin-right: 6px; width: 155px"><i class="fa fa-plus"></i> CREAR</a>
                    <a data-toggle="collapse" href="#collapseAsignar" role="button" aria-expanded="false" aria-controls="collapseCreate"
                       class="btn btn-primary btn-lg mt-5" name="Crear" style="margin-right: 6px; width: 155px"><i class="fa fa-plus"></i> ASIGNAR</a>   
                </div>
                <h3 class="display-4 section-title">Cliente</h3>
                <br>
            </div>
        </section>


        <section class="collapse" id="collapseCreate" style="padding-bottom:40px">
            <div class="container">
                <form onsubmit="return Validar()" name="form1" action="ServletCliente" method="get" name="Cliente">
                    <div class="card card-body">
                        <div class="row">
                            <div class="col-lg-3">
                                <label for="exampleInputEmail1"><h2>Registrar Cliente</h2></label>
                            </div>

                            <div class="col-lg-6">
                                

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">NIT*</span>
                                    </div>
                                    <input type="text" class="form-control" name="txtNIT" id="txtNIT" placeholder="NIT" aria-label="NIT" aria-describedby="basic-addon1" onkeypress="return soloNumero(event)" required>
                                </div> 

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Nombre*</span>
                                    </div>
                                    <input onkeypress="return soloLetras(event)" type="text" class="form-control" name="txtNombre" id="txtNombre" placeholder="Nombre" aria-label="Nombre" aria-describedby="basic-addon1" required>
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Razón Social*</span>
                                    </div>
                                    <input type="text" class="form-control" name="txtRazon" id="txtRazon" placeholder="Razón Social" aria-label="Regalias" aria-describedby="basic-addon1" required>
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Teléfono</span>
                                    </div>
                                    <input type="text" class="form-control" name="txtTel" id="txtTel" placeholder="Teléfono" aria-label="Regalias" aria-describedby="basic-addon1" onkeypress="return soloNumero(event)" required >
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Estado*</span>
                                    </div>
                                    <select class="custom-select" id="txtEstado" name="txtEstado">
                                        <%
                                            Conexion atc = new Conexion();
                                            PreparedStatement psQuery1tc = null;
                                            String strQuery1tc = "select id_estado, significado from estado";
                                            psQuery1tc = atc.getConexion().prepareStatement(strQuery1tc);
                                            ResultSet rstc = psQuery1tc.executeQuery();
                                            while (rstc.next()) {
                                        %>
                                        <option value="<%=rstc.getString(1)%>"><%=rstc.getString(2)%></option>
                                        <%}%>
                                    </select>
                                </div>
                                <div class="pull-right">

                                    <input type="submit" class="btn btn-primary" style="color:#ffffff" value="GUARDAR" name="opc" id="GUARDAR">
                                    <a data-toggle="collapse" href="#collapseCreate" class="btn btn-info" style="color:#ffffff" id="btnCancel"><i class="fa fa-times"></i> CANCELAR</a>
                                </div>

                            </div>
                            <div class="col-lg-3">
                            </div>
                        </div>
                    </div>
                </form>
        </section>



        <section class="collapse" id="collapseAsignar" style="padding-bottom:40px">
            <div class="container">
                <form onsubmit="return Validar()" name="form1" action="ServletCliente" method="get" name="Cliente">
                    <div class="card card-body">
                        <div class="row">
                            <div class="col-lg-3">
                            </div>

                            <div class="col-lg-6">
                                <label for="exampleInputEmail1"><h2>Asignar Servicio</h2></label>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Cliente*</span>
                                    </div>
                                    <select class="custom-select" id="txtCliente" name="txtCliente">
                                        <%
                                            Conexion ae = new Conexion();
                                            PreparedStatement psQuerye = null;
                                            String strQuerye = "select id_clien, nombre from cliente";
                                            psQuerye = ae.getConexion().prepareStatement(strQuerye);
                                            ResultSet rse = psQuerye.executeQuery();
                                            while (rse.next()) {
                                        %>
                                        <option value="<%=rse.getString(1)%>"><%=rse.getString(2)%></option>
                                        <%}%>
                                    </select>
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Servicio*</span>
                                    </div>
                                    <select class="custom-select" id="txtServicio" name="txtServicio">
                                        <%
                                            Conexion as = new Conexion();
                                            PreparedStatement psQuerys = null;
                                            String strQuerys = "select id_servicio, nombre_servicio from servicios";
                                            psQuerys = as.getConexion().prepareStatement(strQuerys);
                                            ResultSet rss = psQuerys.executeQuery();
                                            while (rss.next()) {
                                        %>
                                        <option value="<%=rss.getString(1)%>"><%=rss.getString(2)%></option>
                                        <%}%>
                                    </select>
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Valor Hora*</span>
                                    </div>
                                    <input type="text" class="form-control" name="txtValhora" id="txtValhora" placeholder="Valor Hora" aria-label="Regalias" aria-describedby="basic-addon1" onkeypress="return soloNumero(event)" required >
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Estado*</span>
                                    </div>
                                    <select class="custom-select" id="txtEstadoA" name="txtEstadoA">
                                        <%
                                            Conexion a = new Conexion();
                                            PreparedStatement psQuery = null;
                                            String strQuery = "select id_estado, significado from estado";
                                            psQuery = a.getConexion().prepareStatement(strQuery);
                                            ResultSet rs = psQuery.executeQuery();
                                            while (rs.next()) {
                                        %>
                                        <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
                                        <%}%>
                                    </select>
                                </div>
                                <div class="pull-right">

                                    <input type="submit" class="btn btn-primary" style="color:#ffffff" value="ASIGNAR" name="opc" id="ASIGNAR">
                                    <a data-toggle="collapse" href="#collapseAsignar" class="btn btn-info" style="color:#ffffff" id="btnCancel"><i class="fa fa-times"></i> CANCELAR</a>
                                </div>

                            </div>
                            <div class="col-lg-3">
                            </div>
                        </div>
                    </div>
                </form>
        </section>                         




        <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1">Buscar</span>
                    </div>
                    <input type="text" class="form-control" id="Buscar" name="Buscar" placeholder="Buscar" aria-label="Direccion" aria-describedby="basic-addon1" onkeypress="return doSearch()">
                </div>

            </div>
        </div>
        <div class="container-fluid">
            <center>
                <table class="table-info table-responsive-lg" id="info">
                    <tr class="table-hover">
                        <th>NIT</th>
                        <th>NOMBRE</th>
                        <th>RAZON SOCIAL</th>
                        <th>ESTADO</th>
                        <th>EDITAR</th>
                        <th>SERVICIOS</th>
                    </tr>
                    <%
                        Conexion atable = new Conexion();
                        PreparedStatement psQuery1tab = null;
                        String strQuery1tab = "select c.id_clien, c.NIT, c.NOMBRE,c.RAZON_SOCIAL,c.Telefono,e.id_estado,e.significado from Cliente c inner join Estado e on c.id_estado = e.id_estado";
                        psQuery1tab = atable.getConexion().prepareStatement(strQuery1tab);
                        ResultSet rstab = psQuery1tab.executeQuery();
                        while (rstab.next()) {
                    %>
                    <tr>
                        <td style="display:none"><%=rstab.getString(1)%></td>
                        <td id="NIT"><%=rstab.getString(2)%></td>
                        <td id="tdnombre"><%=rstab.getString(3)%></td>
                        <td><%=rstab.getString(4)%></td>
                        <td style="display:none"><%=rstab.getString(5)%></td>
                        <td style="display:none"><%=rstab.getString(6)%></td>
                        <td><%=rstab.getString(7)%></td>
                        <td>
                            <a class="btn btn-warning btn-sm" id="ed" data-toggle="modal" data-target="#exampleModal" onclick="Editar(event)" style="color:#ffffff">Editar</a>
                        </td>
                        <td>
                            <a class="btn btn-warning btn-sm" id="asignar" data-toggle="modal" data-target="#exampleModalAsignar" onclick="Editar(event)" style="color:#ffffff">Servicios</a>
                        </td>
                    </tr>
                    <%}%>
                </table>
            </center>
        </div>




        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Editar Cliente</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form onsubmit="return Validar()" name="formEditar" action="ServletCliente" method="get" name="Clienteeditar">
                            <div class="card card-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="input-group mb-3">
                                            <input style="display:none" type="text" class="form-control" name="txtID" id="txtID" placeholder="NIT" aria-label="NIT" aria-describedby="basic-addon1" onkeypress="return soloNumero(event)" required>
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">NIT*</span>
                                            </div>
                                            <input type="text" class="form-control" name="txtNITe" id="txtNITe" placeholder="NIT" aria-label="NIT" aria-describedby="basic-addon1" onkeypress="return soloNumero(event)" >
                                        </div> 

                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">Nombre*</span>
                                            </div>
                                            <input onkeypress="return soloLetras(event)" type="text" class="form-control" name="txtNombree" id="txtNombree" placeholder="Nombre" aria-label="Nombre" aria-describedby="basic-addon1" required>
                                        </div>

                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">Razón Social*</span>
                                            </div>
                                            <input type="text" class="form-control" name="txtRazone" id="txtRazone" placeholder="Razon Social" aria-label="Regalias" aria-describedby="basic-addon1" required>
                                        </div>

                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">Teléfono</span>
                                            </div>
                                            <input type="text" class="form-control" name="txtTele" id="txtTele" placeholder="Telefono" aria-label="Regalias" aria-describedby="basic-addon1" onkeypress="return soloNumero(event)" required >
                                        </div>

                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">Estado*</span>
                                            </div>
                                            <select class="custom-select" name="txtEstadoe" id="txtEstadoe">
                                                <option>Elige el estado</option>
                                                <%
                                                    Conexion ate = new Conexion();
                                                    PreparedStatement psQuery1te = null;
                                                    String strQuery1te = "select id_estado, significado from estado";
                                                    psQuery1te = ate.getConexion().prepareStatement(strQuery1te);
                                                    ResultSet rste = psQuery1te.executeQuery();
                                                    while (rste.next()) {
                                                %>
                                                <option value="<%=rste.getString(1)%>"><%=rste.getString(2)%></option>
                                                <%}%>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-primary" value="EDITAR" name="opc" id="EDITAR">
                                <button type="button" class="btn btn-info" data-dismiss="modal">CANCELAR</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>





        <!-- Modal ASIGNAR-->
        <div class="modal fade" id="exampleModalAsignar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalasignarlabel">Cliente</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form onsubmit="return Validar()" name="formEditar" action="ServletCliente" method="get" name="Clienteasignar">
                            <div class="card card-body">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="input-group mb-3">
                                            <input style="display:none" type="text" class="form-control" name="txtIDclien" id="txtIDclien">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">Servicio*</span>
                                            </div>
                                            <select class="custom-select" name="txtServicioAsignar" id="txtServicioAsignar">
                                                <%
                                                    Conexion asc = new Conexion();
                                                    PreparedStatement psQuerysc = null;
                                                    String strQuerysc = "select id_servicio, NOMBRE_SERVICIO from servicios";
                                                    psQuerysc = asc.getConexion().prepareStatement(strQuerysc);
                                                    ResultSet rssc = psQuerysc.executeQuery();
                                                    while (rssc.next()) {
                                                %>
                                                <option value="<%=rssc.getString(1)%>"><%=rssc.getString(2)%></option>
                                                <%}%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="input-group mb-3">
                                            <input style="display:none" type="text" class="form-control" name="txtIDservi" id="txtIDservi" placeholder="NIT" aria-label="NIT" aria-describedby="basic-addon1" onkeypress="return soloNumero(event)" required>
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">Valor hora*</span>
                                            </div>
                                            <input type="text" class="form-control" name="txtValorh" id="txtValorh" placeholder="Valor hora" aria-describedby="basic-addon1" onkeypress="return soloNumero(event)" >
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">Estado*</span>
                                            </div>
                                            <select class="custom-select" name="txtEstadoAsignar" id="txtEstadoAsignar">
                                                <%
                                                    Conexion asce = new Conexion();
                                                    PreparedStatement psQuerysce = null;
                                                    String strQuerysce = "select id_estado, significado from estado";
                                                    psQuerysce = asce.getConexion().prepareStatement(strQuerysce);
                                                    ResultSet rsce = psQuerysce.executeQuery();
                                                    while (rsce.next()) {
                                                %>
                                                <option value="<%=rsce.getString(1)%>"><%=rsce.getString(2)%></option>
                                                <%}%>
                                            </select>
                                        </div>

                                    </div>
                                </div>
                                <center>
                                    <table id="editarAsignar">
                                        <tr>
                                            <th>SERVICIO</th>
                                            <th>VALOR HORA</th>
                                            <th>ESTADO</th>
                                            <th>EDITAR</th>
                                        </tr>
                                        <%
                                            Conexion con = new Conexion();
                                            PreparedStatement psquery = null;
                                            String strquery = "select c.ID_CLIEN_SERVI, c.ID_SERVICIO,s.nombre_servicio, c.VALOR_HORA,e.id_estado,e.significado from clien_servi c inner join Estado e on c.id_estado = e.id_estado inner join servicios s on c.id_servicio = s.id_servicio";
                                            psquery = con.getConexion().prepareStatement(strquery);
                                            ResultSet rsquery = psquery.executeQuery();
                                            while (rsquery.next()) {
                                        %>
                                        <tr>
                                            <td style="display:none"><%=rsquery.getString(1)%></td>
                                            <td style="display:none"><%=rsquery.getString(2)%></td>
                                            <td><%=rsquery.getString(3)%></td>
                                            <td><%=rsquery.getString(4)%></td>
                                            <td style="display:none"><%=rsquery.getString(5)%></td>
                                            <td><%=rsquery.getString(6)%></td>
                                            <td>
                                                <a class="btn btn-primary" id="asignareditar"
                                                   style="margin-right: 5px; width: 60px; color:#ffffff">  
                                                    <i class="fa fa-pencil-square-o  fa-2x" aria-hidden="true"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <%}%>
                                    </table>  
                                </center>
                            </div>
                            <div class="modal-footer">
                                <a <input type="submit" class="btn btn-primary" value="EDITAR" name="opc" id="EDITARASIGNAR" style="color:#ffffff"><i class="fa fa-save fa-2x"></i></a>
                                <a <button type="button" class="btn btn-info" data-dismiss="modal" style="color:#ffffff"></button><i class="fa fa-times fa-2x"></i></a>
                            </div>                  
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="vendor/bootstrap/js/angular.min.js" type="text/javascript"></script>
        <script>
                                                $(document).ready(function () {
                                                    /*$('nav').on('click', '.open-search', function () {
                                                     $('[name="search"]').toggleClass('show');*/


                                                    $("#info").on('click', '#ed', function () {
                                                        // get the current row
                                                        var currentRow = $(this).closest("tr");

                                                        var col1 = currentRow.find("td:eq(0)").text(); // get current row 1st TD value
                                                        var col2 = currentRow.find("td:eq(1)").text(); // get current row 2nd TD
                                                        var col3 = currentRow.find("td:eq(2)").text(); // get current row 3rd TD
                                                        var col4 = currentRow.find("td:eq(3)").text();
                                                        var col5 = currentRow.find("td:eq(4)").text();
                                                        var col6 = currentRow.find("td:eq(5)").text();
                                                        $('#txtID').val(col1);
                                                        $('#txtNITe').val(col2);
                                                        $('#txtNombree').val(col3);
                                                        $('#txtRazone').val(col4);
                                                        $('#txtTele').val(col5);
                                                        $('select[name=txtEstadoe]').val(col6);
                                                        $('select[name=txtEstadoe]').change();
                                                    });

                                                    $('#txtNITe').attr('disabled', true);

                                                    $("#info").on('click', '#asignar', function () {
                                                        var currentRow = $(this).closest("tr");

                                                        var col1 = currentRow.find("td:eq(0)").text();
                                                        var col3 = currentRow.find("td:eq(2)").text();
                                                        $('#modalasignarlabel').html(col3);
                                                        $('#txtIDserviclien').val(col1);

                                                        $('#EDITARASIGNAR').attr('disabled', true);
                                                        $('#txtEstadoAsignar').attr('disabled', true);
                                                        $('#txtValorh').attr('disabled', true);
                                                        $('#txtServicioAsignar').attr('disabled', true);
                                                    });

                                                    $("#editarAsignar").on('click', '#asignareditar', function () {
                                                        var currentRow = $(this).closest("tr");

                                                        var col1 = currentRow.find("td:eq(0)").text();
                                                        var col2 = currentRow.find("td:eq(1)").text();
                                                        var col4 = currentRow.find("td:eq(3)").text();
                                                        var col5 = currentRow.find("td:eq(4)").text();

                                                        $('#txtIDservi').val(col1);
                                                        $('#txtValorh').val(col4);
                                                        $('select[name=txtServicioAsignar]').val(col2);
                                                        $('select[name=txtServicioAsignar]').change();
                                                        $('select[name=txtEstadoAsignar]').val(col5);
                                                        $('select[name=txtEstadoAsignar]').change();

                                                        $('#EDITARASIGNAR').attr('disabled', false);
                                                        $('#txtEstadoAsignar').attr('disabled', false);
                                                        $('#txtValorh').attr('disabled', false);
                                                    });

                                                });

                                                /*$('#ed').on('click', function () {
                                                 var nit = document.getElementsByName('NIT').value.toLowerCase();
                                                 Conexion a = new Conexion();
                                                 PreparedStatement psQuery1 = null;
                                                 String strQuery1 = "select * from cliente where ID_CLIEN = 1";
                                                 psQuery1 = a.getConexion().prepareStatement(strQuery1);
                                                 ResultSet rs = psQuery1.executeQuery();
                                                 while (rs.next()) {
                                                 $('#txtNIT').val(rs.getString(2));
                                                 $('#txtNombre').val(rs.getString(3));
                                                 $('#txtRazon').val(rs.getString(4));
                                                 $('#txtTel').val(rs.getString(5));
                                                 $('.collapse').collapse();
                                                 $("#GUARDAR").css("display", "none");
                                                 $("#EDITAR").css("display", "inline");
                                                 
                                                 });
                                                 $('#btnCancel').on('click', function () {
                                                 $("#GUARDAR").css("display", "inline");
                                                 $("#EDITAR").css("display", "none");
                                                 });*/





        </script>
        <script language="javascript" type="text/javascript">

            function soloLetras(e) {
                key = e.keyCode || e.which;
                tecla = String.fromCharCode(key).toLowerCase();
                letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
                especiales = "8-37-39-46";

                tecla_especial = false
                for (var i in especiales) {
                    if (key == especiales[i]) {
                        tecla_especial = true;
                        break;
                    }
                }

                if (letras.indexOf(tecla) == -1 && !tecla_especial) {
                    return false;
                }
            }

            function soloNumero(e) {
                key = e.keyCode || e.which;
                tecla = String.fromCharCode(key).toLowerCase();
                letras = "1234567890-',";
                especiales = "8-37-39-46";

                tecla_especial = false
                for (var i in especiales) {
                    if (key == especiales[i]) {
                        tecla_especial = true;
                        break;
                    }
                }

                if (letras.indexOf(tecla) == -1 && !tecla_especial) {
                    return false;
                }
            }



            function doSearch() {
                var tableReg = document.getElementById('info');
                var searchText = document.getElementById('Buscar').value.toLowerCase();
                var cellsOfRow = "";
                var found = false;
                var compareWith = "";
                // Recorremos todas las filas con contenido de la tabla
                for (var i = 1; i < tableReg.rows.length; i++)
                {
                    cellsOfRow = tableReg.rows[i].getElementsByTagName('td');
                    found = false;
                    // Recorremos todas las celdas
                    for (var j = 0; j < cellsOfRow.length && !found; j++)
                    {
                        compareWith = cellsOfRow[j].innerHTML.toLowerCase();
                        // Buscamos el texto en el contenido de la celda
                        if (searchText.length == 0 || (compareWith.indexOf(searchText) > -1))
                        {
                            found = true;
                        }
                    }
                    if (found)
                    {
                        tableReg.rows[i].style.display = '';
                    } else {
                        // si no ha encontrado ninguna coincidencia, esconde la
                        // fila de la tabla
                        tableReg.rows[i].style.display = 'none';
                    }
                }
            }

        </script>
    </body>

</html>

