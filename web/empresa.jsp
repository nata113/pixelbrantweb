<%-- 
    Document   : empresa
    Created on : Apr 16, 2018, 10:32:45 AM
    Author     : luisa.jaramillo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Controlador.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" type="image/png" href="img/favicon.png">
        <link rel="apple-touch-icon" sizes="180x180" href="img/favicon.png">
        <link rel="icon" type="image/png" href="img/favicon.png" sizes="32x32">

        <title>SiSMusic</title>

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

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#"><img class="logo" src="img/logo.png"/></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto navbar-right">
                        <input type="search" name="search" placeholder="Buscar"/>
                        <li class="nav-item">
                            <a class="nav-link open-search" href="#"><i class="fa fa-2x fa-search"></i></a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"> 
                                <i class="fa fa-2x fa-envelope"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right form-contacto" style="padding: 15px; padding-bottom: 0px;">
                                <h2 class="title-contacto">Contáctenos</h2>
                                <p class="text-center">Alguna inquietud? no dude en escribirnos: </p>
                                <br>
                                <form name="contactform" method="post" action="mailer.php" class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label for="inputName" class="col-lg-2 control-label">Organización</label>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="inputName" name="inputName" placeholder="Nombre u Organizacion">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail1" class="col-lg-2 control-label">Email</label>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="inputEmail" name="inputEmail" placeholder="Su Email">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputSubject" class="col-lg-2 control-label">Asunto</label>
                                        <div class="col-lg-10">
                                            <input type="text" class="form-control" id="inputSubject" name="inputSubject" placeholder="Asunto">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword1" class="col-lg-2 control-label">Mensaje</label>
                                        <div class="col-lg-10">
                                            <textarea class="form-control" rows="4" id="inputMessage" name="inputMessage" placeholder="Mensaje ..."></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-offset-2 col-lg-10">
                                            <button type="submit" class="btn btn-default" style="background-color: #bd0760; color: #ffffff">
                                                Enviar Mensaje
                                            </button>
                                        </div>
                                    </div>
                                </form><br>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"> 
                                <img class="img-fluid rounded-circle" style="width:45px; margin-top: -10px" src="http://digitalinfluencelab.com/wp-content/uploads/2014/01/sarah_williams1-300x2931.jpg"/>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <h6 class="dropdown-header">Super Administrador</h6>
                                <a class="dropdown-item" href="#">Perfil</a>
                                <a class="dropdown-item" href="#">Ayuda</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Cerrar Sesi&oacute;n</a>
                            </div>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>

        <section style="padding-top: 120px; padding-bottom:40px">
            <div class="container section-header">
                <div class="pull-right" style="margin-top: -20px">
                    <a data-toggle="collapse" href="#collapseCreate" role="button" aria-expanded="false" aria-controls="collapseCreate"
                       class="btn btn-primary btn-lg mt-5" style="margin-right: 6px; width: 155px"><i class="fa fa-plus"></i> CREAR</a>
                </div>
                <h1 class="display-3 section-title">Empresas</h1>
            </div>
        </section>

        <section class="collapse" id="collapseCreate" style="padding-bottom:40px">
            <div class="container">
                <div class="card card-body">
                    <div class="row">
                        <div class="col-lg-4">
                            <a onclick="$('#artistPhoto').click()" style="cursor: pointer;">
                                <img width="100%" id="imgLogo" src="https://vignette.wikia.nocookie.net/the-darkest-minds/images/4/47/Placeholder.png/revision/latest?cb=20160927044640"/>
                            </a>
                            <input name="artistPhoto" id="artistPhoto" type="file" style="display:none"/>
                        </div>

                        <div class="col-lg-8">
                            <form onsubmit="return Validar()" name="form1">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">NIT</span>
                                    </div>
                                    <input type="text" class="form-control" id="txtID" name="txtID" placeholder="NIT" aria-label="NIT" aria-describedby="basic-addon1" onkeypress="return soloNumero()">
                                </div> 

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Nombre</span>
                                    </div>
                                    <input type="text" class="form-control" id="txtNombre" name="txtNombre" placeholder="Nombre" aria-label="Nombre" aria-describedby="basic-addon1">
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Resumen</label>
                                    <textarea class="form-control" rows="5" id="txtResumen" ></textarea>
                                </div>

                                <div class="pull-right">
                                    <a class="btn btn-info" style="color:#ffffff" id="btnCancel"><i class="fa fa-times"></i> CANCELAR</a>
                                    <input type="submit" class="btn btn-primary" style="color:#ffffff"><i class="fa fa-save"/></i> GUARDAR
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div class="container">
                <%--<div class="row">
                    <%
                        Conexion a = new Conexion();
                        PreparedStatement psQuery1 = null;
                        String strQuery1 = "select * from EMPRESA";
                        psQuery1 = a.getConexion().prepareStatement(strQuery1);
                        ResultSet rs = psQuery1.executeQuery();
                        while (rs.next()) {
                    %>
                    <div class="col-lg-4">
                        <div class="card mb-3 detail-item" style="max-width: 18rem;">
                            <div class="card-header">
                                <h5 class="card-title"><%=rs.getString(2)%></h5>
                            </div>
                            <img class="card-img-top" src="https://img.wennermedia.com/article-leads-horizontal/gettyimages-670639662-bfbafb50-ff67-42eb-abee-30892b9fa92b.jpg"/>
                            <div class="card-body">
                                <p class="card-text justified"><%=rs.getString(3)%></p>
                            </div>
                        </div>
                    </div>
                    <%}%>
                    --%>
                    <div class="col-lg-4">
                        <div class="card mb-3 detail-item" style="max-width: 18rem;">
                            <div class="card-header">
                                <h5 class="card-title">YouTube</h5>
                            </div>
                            <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHjh1xsATdsluJkrO9velqv-6jYrhD23M20PLmpzyRq5nVbZhehw"/>
                            <div class="card-body">

                                <p class="card-text">Curabitur tincidunt nibh in lectus feugiat, at volutpat purus.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card mb-3 detail-item" style="max-width: 18rem;">
                            <div class="card-header">
                                <h5 class="card-title">iTunes</h5>
                            </div>
                            <img class="card-img-top" src="http://mouse.latercera.com/wp-content/uploads/2017/05/itunes_is_illigal_in_the_uk_but_you_wont_be_jailed_for_that_thumb800-900x486.png"/>
                            <div class="card-body">

                                <p class="card-text"> Nunc maximus arcu nisi, et vulputate nunc fringilla eget.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4">
                        <div class="card mb-3 detail-item" style="max-width: 18rem;">
                            <div class="card-header">
                                <h5 class="card-title">Google Play Music</h5>
                            </div>
                            <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlS9u-JwIEhMh10GWyFWiSjq2CRTjvsx4eptE6RQqAv244ij2d"/>
                            <div class="card-body">

                                <p class="card-text">Donec bibendum, dui a ultricies dictum, diam urna venenatis risu.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card mb-3 detail-item" style="max-width: 18rem;">
                            <div class="card-header">
                                <h5 class="card-title">Beats Music</h5>
                            </div>
                            <img class="card-img-top" src="https://i.ytimg.com/vi/VUKoATlUyK0/maxresdefault.jpg"/>
                            <div class="card-body">

                                <p class="card-text">Aliquam erat volutpat. Donec sit amet molestie lorem.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card mb-3 detail-item" style="max-width: 18rem;">
                            <div class="card-header">
                                <h5 class="card-title">Deezer</h5>
                            </div>
                            <img class="card-img-top" src="http://media-assets-02.thedrum.com/cache/images/thedrum-prod/s3-news-tmp-103031-cricket-deezer--2x1--940.png"/>
                            <div class="card-body">
                                <p class="card-text">Sed congue metus quis ex condimentum maximus. Quisque justo diam.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="padding: 20px">
                    <br/>
                    <ul class="pagination justify-content-center">
                        <li class="page-item disabled">
                            <span class="page-link">Anterior</span>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item active">
                            <span class="page-link">
                                2
                                <span class="sr-only">(actual)</span>
                            </span>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#">Siguiente</a>
                        </li>
                    </ul>
                    <br/>
                </div>
            </div>

        </section>

        <!-- Footer -->
        <footer class="py-5 bg-black">
            <div class="container">
                <p class="m-0 text-center text-white small">Copyright &copy; SiSMusic 2018</p>
            </div>
            <!-- /.container -->
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script>
                                        $(document).ready(function () {
                                            $('nav').on('click', '.open-search', function () {
                                                $('[name="search"]').toggleClass('show')
                                            });

                                            $('.detail-item').on('click', function () {
                                                $('#txtNit').val('11111111111');
                                                $('#txtNombre').val('Spotify');
                                                $('#txtResumen').val('Lorem ipsum dolor sit amet, consectetur adipiscing elit.');
                                                $('#imgLogo').attr('src', 'https://img.wennermedia.com/article-leads-horizontal/gettyimages-670639662-bfbafb50-ff67-42eb-abee-30892b9fa92b.jpg');
                                                $('.collapse').collapse();
                                            });

                                            $('#btnCancel').on('click', function () {
                                                $('#txtNit').val('');
                                                $('#txtNombre').val('');
                                                $('#txtResumen').val('');
                                                $('#imgLogo').attr('src', 'https://vignette.wikia.nocookie.net/the-darkest-minds/images/4/47/Placeholder.png/revision/latest?cb=20160927044640');
                                                $('.collapse').collapse('hide');
                                            });
                                        });
        </script>
        <script language="javascript" type="text/javascript">
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

            function Validar() {
                var nit = document.getElementById('txtID');
                var nombre = document.getElementById('txtNombre');
                if (nit.length == 0) {
                    alert("Ingrese el NIT de la empresa");
                    return false;
                }
                if (nombre.length == 0) {
                    alert("Ingrese el Nombre de la empres");
                    return false;
                }
                if (resumen.length == 0) {
                    alert("Ingrese una descripción de la empresa");
                    return false;
                }
                return true;
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

