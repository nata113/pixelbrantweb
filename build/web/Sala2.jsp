<%-- 
    Document   : Sala2
    Created on : 7/02/2022, 09:47:29 PM
    Author     : NATALI
--%>

<%@page import="Controlador.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
                <div class="pull-right" style="margin-top: -20px">
                    <a data-toggle="collapse" href="#collapseCreate2" role="button" aria-expanded="false" aria-controls="collapseCreate"
                       class="btn btn-primary btn-lg mt-5" name="Crear" style="margin-right: 6px; width: 155px"><i class="fa fa-plus"></i> CREAR</a>
                    <a data-toggle="collapse" href="#collapseCreate" role="button" aria-expanded="false" aria-controls="collapseCreate"
                       class="btn btn-primary btn-lg mt-5" name="Crear" style="margin-right: 6px; width: 155px"><i class="fa fa-plus"></i> RESERVAR</a>   
                </div>
                <h3 class="display-4 section-title">Sala</h3>
                <br>
            </div>
        </section>
        <section class="collapse" id="collapseCreate" style="padding-bottom:40px">
            <div class="container">
                <form name="form1" action="ServletSala2" method="get" >
                    <div class="card card-body">
                        <div class="row">
                            <div class="col-lg-3">
                            </div>

                            <div class="col-lg-6">
                                <label for="exampleInputEmail1"><h2>Reserva Sala</h2></label>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Nombre Sala</span>
                                    </div>
                                    <select class="custom-select" id="txtSala" name="txtSala">
                                        <option>Elige la sala</option>
                                        <%
                                            Conexion atc = new Conexion();
                                            PreparedStatement psQuery1tc = null;
                                            String strQuery1tc = "select id_sala, nombre_sala from sala";
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
                                        <span class="input-group-text" id="basic-addon1">Empleado Encargado</span>
                                    </div>
                                    <select class="custom-select" id="txtEncargado" name="txtEncargado">
                                        <option>Elige la sala</option>
                                        <%
                                            Conexion at = new Conexion();
                                            PreparedStatement psQuery1t = null;
                                            String strQuery1t = "select ID_EMPLE, concat(NOMBRES,' ',APELLIDO_1) from emple";
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
                                        <span class="input-group-text" id="basic-addon1">Fecha Inicio</span>
                                    </div>
                                    <input type="date" class="form-control" id="fechainicio" name="fechainicio" placeholder="Fecha Inicio" aria-label="Fechaini" aria-describedby="basic-addon1">
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="basic-addon1">Fecha Fin</span>
                                        </div>
                                        <input type="date" class="form-control" id="fechafin" name="fechafin" placeholder="Fecha Fin" aria-label="Fechafin" aria-describedby="basic-addon1">


                                    </div>


                                    <div class="pull-right">
                                        <input type="submit" class="btn btn-primary" style="color:#ffffff" value="RESERVAR" name="opc" id="RESERVAR">
                                        <a class="btn btn-info" style="color:#ffffff" id="btnCancel" onclick="return cancel()"><i class="fa fa-times" href="#collapseCreate"></i>CANCELAR</a>
                                    </div>

                                </div>
                                <div class="col-lg-3">
                                </div>
                            </div>
                        </div>
                    </div>                                    
                </form>
        </section>

        <section class="collapse" id="collapseCreate2" style="padding-bottom:40px">
            <div class="container">
                <form  name="form1" action="ServletSala2" method="get" >
                    <div class="card card-body">
                        <div class="row">
                            <div class="col-lg-3">
                            </div>

                            <div class="col-lg-6">
                                <label for="exampleInputEmail1"><h2>Crear Sala</h2></label>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Nombre Sala</span>
                                    </div>
                                    <input type="text" class="form-control" id="txtNomSala" name="txtNomSala" placeholder="NomSala" aria-label="NomSala" aria-describedby="basic-addon1" required>
                                </div> 

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Ubicación</span>
                                    </div>
                                    <input type="text" class="form-control" id="txtUbicacion" name="txtUbicacion" placeholder="Ubicacion" aria-label="Ubicación" aria-describedby="basic-addon1" required>
                                </div>


                                <div class="pull-right">
                                    <input type="submit" class="btn btn-primary" style="color:#ffffff; display: none" value="EDITAR" name="opc" id="EDITAR">
                                    <input type="submit" class="btn btn-primary" style="color:#ffffff" value="GUARDAR" name="opc" id="GUARDAR">
                                    <a class="btn btn-info" style="color:#ffffff" id="btnCancel" onclick="return cancel()"><i class="fa fa-times" href="#collapseCreate"></i>CANCELAR</a>
                                </div>

                            </div>
                            <div class="col-lg-3">
                            </div>
                        </div>
                    </div>
                </form>
        </section>

        <section>
            <div class="container">
                <div class="row">
                    <%
                        Conexion a = new Conexion();
                        PreparedStatement psQuery1 = null;
                        String strQuery1 = "select * from SALA";
                        psQuery1 = a.getConexion().prepareStatement(strQuery1);
                        ResultSet rs = psQuery1.executeQuery();
                        while (rs.next()) {
                    %>
                    <div class="col-lg-4">
                        <div class="card mb-3 " style="max-width: 18rem;">
                            <div class="card-header detail-item" id="card" data-toggle="modal" data-target="#exampleModal">
                                <input type="text" style="display:none" name="id" id="id" value="<%=rs.getString(1)%>">
                                <h5 class="card-title" name="companyname" id="companyname"><%=rs.getString(2)%></h5>
                            </div>
                            <div class="card-body row">
                            
                                <div>
                                    
                                </div>
                              
                            </div>                            
                        </div>
                    </div>
                    <%}%>
                </div>
            </div>
        </section>


        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script>
                            $(document).ready(function () {
                                $('nav').on('click', '.open-search', function () {
                                    $('[name="search"]').toggleClass('show')
                                });

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
