</body>
</html><%-- 
    Document   : Registro_Actividades
    Created on : 6/10/2019, 12:02:50 PM
    Author     : NATALI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Controlador.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!DOCTYPE html>
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
            <!-- Navigation -->

            <section style="padding-top: 120px; padding-bottom:40px">
                <div class="container section-header">

                    <h1 class="display-5 section-title">Registro Actividades</h1>
                </div>
            </section>


            <div class="container">
                <form action="ServletRegistrarActividad" method="post" name="RegistAc">
                    <div class="row">
                        <div class="col-lg-3">
                        </div>

                        <div class="col-lg-6">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">Empleado*</span>
                                </div>
                                <select class="custom-select" id="txtEmpleado" name="txtEmpleado" >
                                   <%
                                        Conexion aee = new Conexion();
                                        PreparedStatement psQuery1ee = null;
                                        String strQuery1ee = "SELECT e.id_emple,CONCAT(e.nombres,' ',e.APELLIDO_1) FROM usuario_sesion us inner JOIN usuarios u on u.ID_USUARIO=us.ID_USUARIO inner JOIN emple e on e.NUM_IDE=u.NAME";
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
                                    <span class="input-group-text" id="basic-addon1">Servicio*</span>
                                </div>
                                <select class="custom-select" id="txtServicio" name="txtServicio">
                                    <option>Elige el cliente</option>
                                    <%
                                        Conexion aec = new Conexion();
                                        PreparedStatement psQuery1ec = null;
                                        String strQuery1ec = "select cs.ID_CLIEN_SERVI, CONCAT(c.NOMBRE, ' - ', s.NOMBRE_SERVICIO) FROM clien_servi cs INNER JOIN cliente c on cs.ID_CLIEN = c.ID_CLIEN INNER JOIN servicios s on cs.ID_SERVICIO = s.ID_SERVICIO";
                                        psQuery1ec = aec.getConexion().prepareStatement(strQuery1ec);
                                        ResultSet rsec = psQuery1ec.executeQuery();
                                        while (rsec.next()) {
                                    %>
                                    <option value="<%=rsec.getString(1)%>"><%=rsec.getString(2)%></option>
                                    <%}%>                                       
                                </select>
                            </div>
                                
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">Actividad*</span>
                                </div>
                                <select class="custom-select" id="txtActividad" name="txtActividad">
                                    <option>Elige la actividad</option>
                                    <%
                                        Conexion ae = new Conexion();
                                        PreparedStatement psQuery1e = null;
                                        String strQuery1e = "select id_activi, nombre_actividad from activi";
                                        psQuery1e = ae.getConexion().prepareStatement(strQuery1e);
                                        ResultSet rse = psQuery1e.executeQuery();
                                        while (rse.next()) {
                                    %>
                                    <option value="<%=rse.getString(1)%>"><%=rse.getString(2)%></option>
                                    <%}%>                                      
                                </select>
                            </div>

                            <div class="input-group mb-3">
                                <div class="col-lg-5">
                                </div>  
                                <script>
                                    var inicio = 0;
                                    var timeout = 0;

                                    function empezarDetener(elemento)
                                    {
                                        if (timeout == 0)
                                        {
                                            // empezar el cronometro

                                            elemento.value = "DETENER";

                                            // Obtenemos el valor actual
                                            inicio = vuelta = new Date().getTime();
                                            enviar = new Date(new Date().toUTCString()).toLocaleString('en-US');
                                            document.getElementById("fechaini").value = enviar;

                                            // iniciamos el proceso
                                            funcionando();
                                        } else {
                                            // detemer el cronometro

                                            elemento.value = "INICIAR";
                                            clearTimeout(timeout);
                                            timeout = 0;
                                        }
                                    }

                                    function funcionando()
                                    {
                                        // obteneos la fecha actual
                                        var actual = new Date().getTime();
                                        enviar2 = new Date(new Date().toUTCString()).toLocaleString('en-US');
                                        document.getElementById("fechafin").value = enviar2;

                                        // obtenemos la diferencia entre la fecha actual y la de inicio
                                        var diff = new Date(actual - inicio);


                                        // mostramos la diferencia entre la fecha actual y la inicial
                                        var result = LeadingZero(diff.getUTCHours()) + ":" + LeadingZero(diff.getUTCMinutes()) + ":" + LeadingZero(diff.getUTCSeconds());
                                        document.getElementById('crono').innerHTML = result;

                                        // Indicamos que se ejecute esta función nuevamente dentro de 1 segundo
                                        timeout = setTimeout("funcionando()", 1000);
                                    }

                                    /* Funcion que pone un 0 delante de un valor si es necesario */
                                    function LeadingZero(Time) {
                                        return (Time < 10) ? "0" + Time : +Time;
                                    }
                                </script>

                                <style>
                                    .crono_wrapper {text-align:center;width:200px;}
                                </style>

                                <div class="crono_wrapper">
                                    <h2 id='crono'>00:00:00</h2>
                                    <input type="button" class="btn btn-primary" value="INICIAR" onclick="empezarDetener(this);">

                                </div>

                            </div>     

                            <div class="input-group mb-3">
                                <div class="col-lg-3">
                                </div>                  
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">Fecha Inicio</span>
                                </div>
                                <input type="text" class="form-control" placeholder="Fecha Inicio" aria-label="Fechaini" aria-describedby="basic-addon1" name="fechaini" id="fechaini" >
                            </div>


                            <div class="input-group mb-3">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Fecha Fin</span>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Fecha Fin" aria-label="Fechafin" aria-describedby="basic-addon1" name="fechafin" id="fechafin">


                                </div>


                                <input type="submit" class="btn btn-primary" style="color:#ffffff" value="GUARDAR" name="opc"> 
                            </div>
                        </div>

                        <div class="col-lg-3">
                        </div>
                    </div>
                </form>
            </div>

            <br>
            <br>
            <br>
            <br>


            <!-- Footer -->
            <footer class="py-5 bg-black">
                <div class="container">
                    <p class="m-0 text-center text-white small">Copyright &copy; Pixel Brant 2019</p>
                </div>
                <!-- /.container -->
            </footer>

            <!-- Bootstrap core JavaScript -->
            <script src="vendor/jquery/jquery.min.js"></script>
            <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
            <script>
                                                $(document).ready(function () {
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

</body>
</html>