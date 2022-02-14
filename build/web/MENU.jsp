<%-- 
    Document   : MENU
    Created on : 5/10/2019, 05:18:30 PM
    Author     : luisa.jaramillo
--%>

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

        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

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
    <body onload="menuitems();">

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
            <div class="container">
                <a class="navbar-brand" href="MENU.jsp"><img class="logo" src="img/logop.png"/></a>


                <%--<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>--%>
                <form action="Inicio" method="post">

                    <div class="collapse navbar-collapse" id="navbarResponsive">
                        <ul class="navbar-nav ml-auto navbar-right">

                            <li class="nav-item">
                                <div class="control-label" style="padding: 10px; padding-bottom: 10px; background-color: #0000; color: #ffffff">
                                    <a class="text-center" href="Empleado.jsp" target="formularios" style="color: white" id="EmpleadoItem"><h3 style="font-size: 105%">Empleado</h3></a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <div class="control-label" style="padding: 10px; padding-bottom: 10px; background-color: #0000; color: #ffffff">
                                    <a class="text-center" href="Cliente.jsp" target="formularios" style="color: white" id="ClienteItem"><h3 style="font-size: 105%">Cliente</h3></a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <div class="control-label" style="padding: 10px; padding-bottom: 10px; background-color: #0000; color: #ffffff">
                                    <a class="text-center" href="Servicio.jsp" target="formularios" style="color: white" id="ClienteItem"><h3 style="font-size: 105%">Servicio</h3></a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <div class="control-label" style="padding: 10px; padding-bottom: 10px; background-color: #0000; color: #ffffff">
                                    <a class="text-center" href="Actividades.jsp" target="formularios" style="color: white" id="ClienteItem"><h3 style="font-size: 105%">Actividad</h3></a>
                                </div>
                            </li><li class="nav-item">
                                <div class="control-label" style="padding: 10px; padding-bottom: 10px; background-color: #0000; color: #ffffff">
                                    <a class="text-center" href="Registro_Actividades.jsp" target="formularios" style="color: white" id="ClienteItem"><h3 style="font-size: 105%">Registrar Actividad</h3></a>
                                </div>
                            </li>                        
                            </li><li class="nav-item">
                                <div class="control-label" style="padding: 10px; padding-bottom: 10px; background-color: #0000; color: #ffffff">
                                    <a class="text-center" href="Sala.jsp" target="formularios" style="color: white" id="ClienteItem"><h3 style="font-size: 105%">Sala</h3></a>
                                </div>
                            </li>     
                            </li><li class="nav-item">
                                <div class="control-label" style="padding: 10px; padding-bottom: 10px; background-color: #0000; color: #ffffff">
                                    <a class="text-center" href="Documentos.jsp" target="formularios" style="color: white" id="ClienteItem"><h3 style="font-size: 105%">Documentos</h3></a>
                                </div>
                            </li>     
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"> 
                                    <img class="img-fluid rounded-circle" style="width:45px; margin-top: -10px" src="https://www.shareicon.net/download/2017/06/22/887603_user_512x512.png"/>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <h6 class="dropdown-header" id="perf">Super Administrador</h6> 
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="cambio_clave.jsp" target="_blank">Cambiar contraseña</a> 
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="index.jsp">Cerrar Sesi&oacute;n</a>                                
                                </div>
                            </li>
                        </ul>
                    </div>
                </form>
            </div>
        </nav>


        <section>
            <article>
                <div class="content">
                    <script language="JavaScript">
//Ajusta el tamaño de un iframe al de su contenido interior para evitar scroll
                        function autofitIframe(id) {
                            if (!window.opera && document.all && document.getElementById) {
                                id.style.height = id.contentWindow.document.body.scrollHeight;
                            } else if (document.getElementById) {
                                id.style.height = id.contentDocument.body.scrollHeight + "px";
                            }
                        }
                    </script>                   
                    <iframe  frameborder="0" style="width: 100%"  name= "formularios" onload="autofitIframe(this);" src="index_1.jsp" ></iframe>

                </div>
            </article> <!-- /article -->
        </section>

        <!-- Footer -->
        

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script>
                        $(document).ready(function () {
                                            $('nav').on('click', '.open-search', function () {
                                                $('[name="search"]').toggleClass('show')
                                                 alert($);
                                            });

                            

                            function menuitems() {
                                var perfil = document.getElementById('perfil').value.toLowerCase();
                                $('perf').val(perfil);
                                if (perfil == "Operador")
                                    document.getElementById('#AuditoriaItem').style.display = "none";
                            }
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
                var resumen = document.getElementById('txtResumen');
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
