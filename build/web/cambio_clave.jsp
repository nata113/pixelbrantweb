<%-- 
    Document   : Registro_Actividades
    Created on : 6/10/2019, 12:02:50 PM
    Author     : NATALI
--%>

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
       
        <section style="padding-top: 50px; padding-bottom:40px">
            <div class="container section-header">

                <h1 class="display-5 section-title">Cambio Contraseña</h1>
            </div>
        </section>


        <div class="container">
            <form action="ServleCambioClave" method="post" name="CambioContra">
                <div class="row">
                    <div class="col-lg-3">
                    </div>

                        <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">Contraseña Actual</span>
                        </div>
                        <input type="password" class="form-control" placeholder="Contraseña Actual" aria-label="ContraActual" aria-describedby="basic-addon1">
                         </div>

                        <div class="input-group mb-3">
                            <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">Nueva Contraseña</span>
                        </div>
                        <input type="password" class="form-control" placeholder="Nueva Contraseña" aria-label="NuevaContra" aria-describedby="basic-addon1">
                    
                        </div>

                        <div class="input-group mb-3">
                            <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">Confirmar Contraseña</span>
                        </div>
                        <input type="password" class="form-control" placeholder="Confirmar Contraseña" aria-label="ConfirmarContra" aria-describedby="basic-addon1">
                    
                        </div>

                            <input type="submit" class="btn btn-primary" style="color:#ffffff" value="GUARDAR" name="opc"> 
                    </div>
                </div>

                <div class="col-lg-3">
                </div>
            </form>
        </div>
    </div>
</div>
</section>

<br>
<br>
<br>
<br>


<!-- Footer -->


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

    </body>
</html>
