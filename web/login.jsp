<%-- 
    Document   : login
    Created on : 6/10/2019, 02:12:52 PM
    Author     : NATALI
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
        <link href="css/login.css" rel="stylesheet">
    </head>
    <body>

        <div class="wrapper">
            <form class="form-signin" name="form1" action="InicioSesion" method="post" name="Incio">
                <img class="logo" src="img/logop.png"/></a>  
            <br>
            <br>
                <input type="text" class="form-control" name="usuario" id="usuario" placeholder="Número de identificación" required="" autofocus="" />
                <br>
                <input type="password" class="form-control" name="contrasena" id="contrasena" placeholder="Contraseña" required=""/>      
                <label class="checkbox">
                    <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Recordar contraseña
                </label>
                <button class="btn btn-lg btn-primary btn-block"  type="submit"  target="_blank" value="INGRESAR" name="opc" id="Iniciar"> Ingresar</button>   
            </form>
        </div>
         
        <header>
            <div class="masthead-content">
                <div class="container">
                   
                    <video autoplay muted loop id="bgVideo">
                        <source src="img/hd0941.mov" type="video/mp4">
                    </video>
                </div>
                    </header>
    

                    <!-- Footer -->
                    <p class="m-0 text-center text-white small">Copyright &copy; SiSMusic 2018</p>
                   
    </body>
</html>
