
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Pixel Brant</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="css/style4.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

</head>

<body>
    
    

    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>
                        <span></span>
                    </button>
            </div>

            <ul class="list-unstyled components">
                
                <li>
                    <a href="index_1.jsp" target="formularios"  id="EmpleadoItem"><h3 style="font-size: 105%">Inicio</h3></a>
                </li> 
                <li>
                    <a href="Empleado.jsp" target="formularios"  id="EmpleadoItem"><h3 style="font-size: 105%">Empleado</h3></a>
                </li>                
                <li>
                    <a href="Cliente.jsp" target="formularios"   id="ClienteItem"><h3 style="font-size: 105%">Cliente</h3></a>
                </li>
                <li>
                    <a href="Servicio.jsp" target="formularios"  id="EmpleadoItem"><h3 style="font-size: 105%">Servicio</h3></a>
                </li>
                <li>
                    <a href="Actividad.jsp" target="formularios"  id="EmpleadoItem"><h3 style="font-size: 105%">Actividad</h3></a>
                </li> 
                <li>
                    <a href="Registro_Actividades.jsp" target="formularios"   id="ClienteItem"><h3 style="font-size: 105%">Registro Actividades</h3></a>
                </li>
                <li>
                    <a href="Sala2.jsp" target="formularios"   id="ClienteItem"><h3 style="font-size: 105%">Sala</h3></a>
                    
                </li>
                <li>
                    <a href="Agenda.jsp" target="formularios"   id="ClienteItem"><h3 style="font-size: 105%">Agenda</h3></a>
                    
                </li>
                 <li>
                    <a href="Facturacion.jsp" target="formularios" id="ClienteItem"><h3 style="font-size: 105%">Facturacion</h3></a>
                    
                </li>
                <li>
                    <a href="Documentos.jsp" target="formularios" id="ClienteItem"><h3 style="font-size: 105%">Documentos</h3></a>
                    
                </li>
                <li>
                 <a href="logOut.jsp"><h3 style="font-size: 105%">Cerrar Sesion</h3></a>
                </li>
            </ul>

            
        </nav>

        <!-- Page Content  -->
        <div id="content">

            
            
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

            

    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
</body>

</html> 