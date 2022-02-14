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
                </div>
                <h3 class="display-4 section-title">Empleado</h3>
                <br>
            </div>
        </section>


        <section class="collapse" id="collapseCreate" style="padding-bottom:40px">
            <div class="container">
                <form onsubmit="return Validar()" name="form1" action="ServletEmpleado" method="post" name="Empleado">
                    <div class="card card-body">
                        <label for="exampleInputEmail1"><h2>Registrar Empleado</h2></label>

                        <div class="row">
                            <div class="col-lg-6">

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Tipo identificación*</span>
                                    </div>
                                    <select class="custom-select" id="inputGroupSelect01" name="TipoID">
                                        <%
                                            Conexion aS = new Conexion();
                                            PreparedStatement psQuery1S = null;
                                            String strQuery1S = "select id_tipo_id, tipo_iden from tipo_iden";
                                            psQuery1S = aS.getConexion().prepareStatement(strQuery1S);
                                            ResultSet rsS = psQuery1S.executeQuery();
                                            while (rsS.next()) {
                                        %>
                                        <option value="<%=rsS.getString(1)%>"><%=rsS.getString(2)%></option>
                                        <%}%>
                                    </select>
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Identificación*</span>
                                    </div>
                                    <input type="text" class="form-control" id="txtID" name="txtID" placeholder="Identificación" aria-label="Identificación" aria-describedby="basic-addon1" onkeypress="return soloNumero(event)" required>
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Nombres*</span>
                                    </div>
                                    <input type="text" class="form-control" id="txtNombre" name="txtNombre" placeholder="Nombres" aria-label="Nombre" aria-describedby="basic-addon1" onkeypress="return soloLetras(event)" required>
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Primer Apellido*</span>
                                    </div>
                                    <input type="text" class="form-control" id="txtApellido1" name="txtApellido1" placeholder="Primer Apellido" aria-label="Apellidos" aria-describedby="basic-addon1" onkeypress="return soloLetras(event)" required>
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Segundo Apellido*</span>
                                    </div>
                                    <input type="text" class="form-control" id="txtApellido2" name="txtApellido2" placeholder="Segundo Apellido" aria-label="Apellidos" aria-describedby="basic-addon1" onkeypress="return soloLetras(event)" required>
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Dirección*</span>
                                    </div>
                                    <input type="text" class="form-control" id="txtDire" name="txtDire" placeholder="Dirección" aria-label="Direccion" aria-describedby="basic-addon1" required>
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Teléfono</span>
                                    </div>
                                    <input type="text" class="form-control" id="txtTel" name="txtTel" placeholder="Teléfono" aria-label="Direccion" aria-describedby="basic-addon1" onkeypress="return soloNumero(event)" required>
                                </div>

                            </div>
                            <div class="col-lg-6">



                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Tipo de empleado*</span>
                                    </div>
                                    <select class="custom-select" id="inputGroupSelect01" name="tipo_emp">
                                        <%
                                            Conexion az = new Conexion();
                                            PreparedStatement psQuery1 = null;
                                            String strQuery1 = "select id_tipo_emple, tipo_emple from tipo_emple";
                                            psQuery1 = az.getConexion().prepareStatement(strQuery1);
                                            ResultSet rs = psQuery1.executeQuery();
                                            while (rs.next()) {
                                        %>
                                        <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
                                        <%}%>
                                    </select>
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Cargo*</span>
                                    </div>
                                    <select class="custom-select" id="inputGroupSelect01" name="Cargo">
                                        <%
                                            Conexion ab = new Conexion();
                                            PreparedStatement psQuery1c = null;
                                            String strQuery1c = "select id_cargo, nombre from Cargo";
                                            psQuery1c = ab.getConexion().prepareStatement(strQuery1c);
                                            ResultSet rsc = psQuery1c.executeQuery();
                                            while (rsc.next()) {
                                        %>
                                        <option value="<%=rsc.getString(1)%>"><%=rsc.getString(2)%></option>
                                        <%}%>
                                    </select>
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Tipo de contrato*</span>
                                    </div>
                                    <select class="custom-select" id="inputGroupSelect01" name="tipo_cont" >
                                        <%
                                            Conexion atc = new Conexion();
                                            PreparedStatement psQuery1tc = null;
                                            String strQuery1tc = "select id_contra, tipo_contrato from tipo_cont";
                                            psQuery1tc = atc.getConexion().prepareStatement(strQuery1tc);
                                            ResultSet rstc = psQuery1tc.executeQuery();
                                            while (rstc.next()) {
                                        %>
                                        <option value="<%=rstc.getString(1)%>"><%=rstc.getString(2)%></option>
                                        <%}%>
                                    </select>
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Vigencia contrato*</span>
                                    </div>
                                    <input type="text" class="form-control" id="txtVig" name="txtVig" placeholder="Vigencia contrato" aria-label="Direccion" aria-describedby="basic-addon1" required>
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Salario</span>
                                    </div>
                                    <input type="text" class="form-control" id="txtSala" name="txtSala" placeholder="Salario" aria-describedby="basic-addon1" onkeypress="return soloNumero(event)" required>
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Contraseña</span>
                                    </div>
                                    <input type="password" class="form-control" id="txtContra" name="txtContra" placeholder="Contraseña" aria-describedby="basic-addon1" maxlength="8" required>
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Estado*</span>
                                    </div>
                                    <select class="custom-select" id="inputGroupSelect01" name="estado">
                                        <%
                                            Conexion ae = new Conexion();
                                            PreparedStatement psQuery1e = null;
                                            String strQuery1e = "select id_estado, significado from estado";
                                            psQuery1e = ae.getConexion().prepareStatement(strQuery1e);
                                            ResultSet rse = psQuery1e.executeQuery();
                                            while (rse.next()) {
                                        %>
                                        <option value="<%=rse.getString(1)%>"><%=rse.getString(2)%></option>
                                        <%}%>
                                    </select>
                                </div>
                                <div class="pull-right">
                                </div>
                                <div class="pull-right">
                                    <input type="submit" class="btn btn-primary" style="color:#ffffff" value="GUARDAR" name="opc" id="GUARDAR">
                                    <a data-toggle="collapse" href="#collapseCreate" class="btn btn-info" style="color:#ffffff" id="btnCancel" onclick="return cancel()"><i class="fa fa-times" ></i> CANCELAR</a>
                                </div>
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
                    <input type="text" class="form-control" name="Buscar" placeholder="Buscar" aria-label="Direccion" aria-describedby="basic-addon1" id="Buscar" onkeypress="return doSearch()">
                </div>

            </div>
        </div>

        <div class="container">
            <center>
                <table class="table-responsive-lg table-bordered" id="info" name="info">
                    <tr>
                        <th>IDENTIFICACIÓN</th>
                        <th>NOMBRE</th>
                        <th>PRIMER APELLIDO</th>
                        <th>SEGUNDO APELLIDO</th>
                        <th>CARGO</th>
                        <th>ESTADO</th>
                        <th>Editar</th>
                    </tr>
                    <%
                        Conexion atable = new Conexion();
                        PreparedStatement psQuery1tab = null;
                        String strQuery1tab = "SELECT id.ID_TIPO_ID,e.NUM_IDE,e.NOMBRES,e.APELLIDO_1,e.APELLIDO_2,e.DIRECCION,e.TELEFONO, te.ID_TIPO_EMPLE,es.ID_ESTADO,ES.SIGNIFICADO,e.VIGENCIA_CONTRATO,c.ID_CARGO,C.NOMBRE,tc.ID_CONTRA,e.SALARIO,e.ID_EMPLE FROM emple e inner join TIPO_IDEN id on e.TIPO_IDEN_ID_TIPO_ID= id.ID_TIPO_ID inner join tipo_emple te on e.ID_TIPO_EMPLE = te.ID_TIPO_EMPLE inner join estado es on e.ID_ESTADO = es.ID_ESTADO inner join cargo c on e.ID_CARGO = c.ID_CARGO inner join tipo_cont tc on e.ID_CONTRA = tc.ID_CONTRA";
                        psQuery1tab = atable.getConexion().prepareStatement(strQuery1tab);
                        ResultSet rstab = psQuery1tab.executeQuery();
                        while (rstab.next()) {
                    %>
                    <tr>
                        <td style="display:none"><%=rstab.getString("ID_TIPO_ID")%></td>
                        <td><%=rstab.getString("NUM_IDE")%></td>
                        <td><%=rstab.getString("NOMBRES")%></td>
                        <td><%=rstab.getString("APELLIDO_1")%></td>
                        <td><%=rstab.getString("APELLIDO_2")%></td>
                        <td style="display:none"><%=rstab.getString("DIRECCION")%></td>
                        <td style="display:none"><%=rstab.getString("TELEFONO")%></td>
                        <td style="display:none"><%=rstab.getString("ID_TIPO_EMPLE")%></td>
                        <td style="display:none"><%=rstab.getString("ID_ESTADO")%></td>
                        <td style="display:none"><%=rstab.getString("VIGENCIA_CONTRATO")%></td>
                        <td style="display:none"><%=rstab.getString("ID_CARGO")%></td>
                        <td><%=rstab.getString("NOMBRE")%></td>
                        <td><%=rstab.getString("SIGNIFICADO")%></td>
                        <td style="display:none"><%=rstab.getString("ID_CONTRA")%></td>
                        <td style="display:none"><%=rstab.getString("SALARIO")%></td>
                        <td style="display:none"><%=rstab.getString("ID_EMPLE")%></td>
                        <td>
                            <a class="btn btn-warning btn-sm" id="ed" data-toggle="modal" data-target="#exampleModal" onclick="Editar(event)" style="color:#ffffff">Editar</a>
                        </td>
                    </tr>
                    <%}%> 
                </table> 
            </center>
        </div>



        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Editar Empleado</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form onsubmit="return Validar()" name="formEditar" action="ServletEmpleado" method="get" name="EmpleadoEditar">
                            <div class="card card-body">
                                <div class="row">

                                    <div class="col-lg-6">
                                        <label for="exampleInputEmail1"><h2>Registrar Empleado</h2></label>
                                        <input style="display:none" type="text" class="form-control" id="txtIDEMPLE" name="txtIDEMPLE" placeholder="Identificación" aria-label="Identificación" aria-describedby="basic-addon1" onkeypress="return soloNumero(event)" required>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">Tipo identificación*</span>
                                            </div>
                                            <select class="custom-select" name="TipoIDe" id="TipoIDe">
                                                <%
                                                    Conexion at = new Conexion();
                                                    PreparedStatement psQuery1t = null;
                                                    String strQuery1t = "select id_tipo_id, tipo_iden from tipo_iden";
                                                    psQuery1t = at.getConexion().prepareStatement(strQuery1t);
                                                    ResultSet rst = psQuery1t.executeQuery();
                                                    while (rst.next()) {
                                                %>
                                                <option value="<%=rst.getString(1)%>"><%=rst.getString(2)%></option>
                                                <%}%>
                                            </select>
                                        </div>

                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">Identificación*</span>
                                            </div>
                                            <input type="text" class="form-control" id="txtIDe" name="txtIDe" placeholder="Identificación" aria-label="Identificación" aria-describedby="basic-addon1" onkeypress="return soloNumero(event)" required>
                                        </div>

                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">Nombres*</span>
                                            </div>
                                            <input type="text" class="form-control" id="txtNombree" name="txtNombree" placeholder="Nombres" aria-label="Nombre" aria-describedby="basic-addon1" onkeypress="return soloLetras(event)" required>
                                        </div>

                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">Primer Apellido*</span>
                                            </div>
                                            <input type="text" class="form-control" id="txtApellido1e" name="txtApellido1e" placeholder="Primer Apellido" aria-label="Apellidos" aria-describedby="basic-addon1" onkeypress="return soloLetras(event)" required>
                                        </div>

                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">Segundo Apellido*</span>
                                            </div>
                                            <input type="text" class="form-control" id="txtApellido2e" name="txtApellido2e" placeholder="Segundo Apellido" aria-label="Apellidos" aria-describedby="basic-addon1" onkeypress="return soloLetras(event)" required>
                                        </div>

                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">Dirección*</span>
                                            </div>
                                            <input type="text" class="form-control" id="txtDiree" name="txtDiree" placeholder="Dirección" aria-label="Direccion" aria-describedby="basic-addon1" required>
                                        </div>

                                    </div>
                                    <div class="col-lg-6">

                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">Teléfono</span>
                                            </div>
                                            <input type="text" class="form-control" id="txtTele" name="txtTele" placeholder="Teléfono" aria-label="Direccion" aria-describedby="basic-addon1" onkeypress="return soloNumero(event)" required>
                                        </div>

                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">Tipo de empleado*</span>
                                            </div>
                                            <select class="custom-select" name="tipo_empe" id="tipo_empe">
                                                <%
                                                    Conexion aze = new Conexion();
                                                    PreparedStatement psQuerye = null;
                                                    String strQuerye = "select id_tipo_emple, tipo_emple from tipo_emple";
                                                    psQuerye = aze.getConexion().prepareStatement(strQuerye);
                                                    ResultSet re = psQuerye.executeQuery();
                                                    while (re.next()) {
                                                %>
                                                <option value="<%=re.getString(1)%>"><%=re.getString(2)%></option>
                                                <%}%>
                                            </select>
                                        </div>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">Cargo*</span>
                                            </div>
                                            <select class="custom-select" id="Cargoe" name="Cargoe">
                                                <%
                                                    Conexion abc = new Conexion();
                                                    PreparedStatement psQuery1cc = null;
                                                    String strQuery1cc = "select id_cargo, nombre from Cargo";
                                                    psQuery1cc = abc.getConexion().prepareStatement(strQuery1cc);
                                                    ResultSet rscc = psQuery1cc.executeQuery();
                                                    while (rscc.next()) {
                                                %>
                                                <option value="<%=rscc.getString(1)%>"><%=rscc.getString(2)%></option>
                                                <%}%>
                                            </select>
                                        </div>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">Tipo de contrato*</span>
                                            </div>
                                            <select class="custom-select" id="tipo_conte" name="tipo_conte">
                                                <%
                                                    Conexion atct = new Conexion();
                                                    PreparedStatement psQuery1tct = null;
                                                    String strQuery1tct = "select id_contra, tipo_contrato from tipo_cont";
                                                    psQuery1tct = atct.getConexion().prepareStatement(strQuery1tct);
                                                    ResultSet rstct = psQuery1tct.executeQuery();
                                                    while (rstct.next()) {
                                                %>
                                                <option value="<%=rstct.getString(1)%>"><%=rstct.getString(2)%></option>
                                                <%}%>
                                            </select>
                                        </div>

                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">Vigencia contrato*</span>
                                            </div>
                                            <input type="text" class="form-control" id="txtVige" name="txtVige" placeholder="Vigencia contrato" aria-label="Direccion" aria-describedby="basic-addon1" required>
                                        </div>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">Salario</span>
                                            </div>
                                            <input type="text" class="form-control" id="txtSalae" name="txtSalae" placeholder="Salario" aria-label="Direccion" aria-describedby="basic-addon1" onkeypress="return soloNumero(event)" required>
                                        </div>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">Estado*</span>
                                            </div>
                                            <select class="custom-select" id="estadoe" name="estadoe">
                                                <%
                                                    Conexion cones = new Conexion();
                                                    PreparedStatement psQuery1cones = null;
                                                    String strQuery1cones = "select id_estado, significado from estado";
                                                    psQuery1cones = cones.getConexion().prepareStatement(strQuery1cones);
                                                    ResultSet rscones = psQuery1cones.executeQuery();
                                                    while (rscones.next()) {
                                                %>
                                                <option value="<%=rscones.getString(1)%>"><%=rscones.getString(2)%></option>
                                                <%}%>
                                            </select>
                                        </div>
                                        <div class="pull-right">
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




        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="vendor/bootstrap/js/angular.min.js" type="text/javascript"></script>
        <script>
                                                $(document).ready(function () {
                                                    $("#info").on('click', '#ed', function () {
                                                        // get the current row
                                                        var currentRow = $(this).closest("tr");

                                                        var col1 = currentRow.find("td:eq(0)").text(); // get current row 1st TD value
                                                        var col2 = currentRow.find("td:eq(1)").text(); // get current row 2nd TD
                                                        var col3 = currentRow.find("td:eq(2)").text(); // get current row 3rd TD
                                                        var col4 = currentRow.find("td:eq(3)").text();
                                                        var col5 = currentRow.find("td:eq(4)").text();
                                                        var col6 = currentRow.find("td:eq(5)").text();
                                                        var col7 = currentRow.find("td:eq(6)").text();
                                                        var col8 = currentRow.find("td:eq(7)").text();
                                                        var col9 = currentRow.find("td:eq(8)").text();
                                                        var col10 = currentRow.find("td:eq(9)").text();
                                                        var col11 = currentRow.find("td:eq(10)").text();
                                                        var col14 = currentRow.find("td:eq(13)").text();
                                                        var col15 = currentRow.find("td:eq(14)").text();
                                                        var col16 = currentRow.find("td:eq(15)").text();

                                                        $('select[name=TipoIDe]').val(col1);
                                                        $('select[name=TipoIDe]').change();
                                                        $('#txtIDe').val(col2);
                                                        $('#txtNombree').val(col3);
                                                        $('#txtApellido1e').val(col4);
                                                        $('#txtApellido2e').val(col5);
                                                        $('#txtDiree').val(col6);
                                                        $('#txtTele').val(col7);
                                                        $('select[name=tipo_empe]').val(col8);
                                                        $('select[name=tipo_empe]').change();
                                                        $('select[name=estadoe]').val(col9);
                                                        $('select[name=estadoe]').change();
                                                        $('#txtVige').val(col10);
                                                        $('select[name=Cargoe]').val(col11);
                                                        $('select[name=Cargoe]').change();
                                                        $('select[name=tipo_conte]').val(col14);
                                                        $('select[name=tipo_conte]').change();
                                                        $('#txtSalae').val(col15);
                                                        $('#txtIDEMPLE').val(col16);
                                                    });

                                                    $('#txtIDe').attr('disabled', true);
                                                    $('#TipoIDe').attr('disabled', true);
                                                });

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

