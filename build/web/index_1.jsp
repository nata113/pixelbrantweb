<%-- 
    Document   : index
    Created on : 6/10/2019, 04:49:31 PM
    Author     : NATALI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

    <body>

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#"><img class="logo" src="img/logop.png"/></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
              
            </div>
        </nav>

        <header class="masthead text-center text-white">
            <div class="masthead-content">
                <div class="container">
                    <h1 class="masthead-heading mb-0">BIENVENIDOS</h1>

                   </div>
            </div>
            <video autoplay muted loop id="bgVideo">
                <source src="img/171003B_009_2K.mp4" type="video/mp4">
            </video>
        </header>

        <section>
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 order-lg-2">
                        <div class="p-5">
                            <img class="img-fluid rounded-circle" src="img/cohete.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-lg-6 order-lg-1">
                        <div class="p-5">
                            <h2 class="display-4">??Quienes somos?</h2>
                            <p>Somos una Agencia (Digital) (Visual), dedicada al dise??o, desarrollo y posicionamiento Web,
                                enfocados en el crecimiento de su empresa o negocio a trav??s de soluciones y estrategias
                                digitales.
                                Estamos comprometidos en impulsar su imagen y marca por medio de ideas innovadoras y
                                creativas que permitan un posicionamiento en el mercado y un acercamiento directo con los
                                clientes, implementando diferentes estrategias digitales como el dise??o de p??ginas Web, el
                                posicionamiento web y la administraci??n de redes Sociales.
                                .</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="p-5">
                            <img class="img-fluid rounded-circle" src="img/teamwork.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="p-5">
                            <h2 class="display-4">??Quienes integran este equipo?</h2>
                            <p>Profesionales que ofrece soluciones digitales para el desarrollo, dise??o y
                                posicionamiento Web. Nuestro enfoque es impulsar el crecimiento de su empresa a trav??s de
                                estrategias efectivas con soluciones digitales.
                                Nuestro compromiso es innovar y fortalecer de forma autentica la imagen y marca por medio del
                                Marketing digital: P??ginas web, administraci??n de redes sociales y un optimo posicionamiento en
                                la wed.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 order-lg-2">
                        <div class="p-5">
                            <img class="img-fluid rounded-circle" src="img/idea.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-lg-6 order-lg-1">
                        <div class="p-5">
                            <h2 class="display-4">Misi??n y Visi??n</h2>
                            <br>
                            <p><b>Misi??n</b>
                                Proporcionamos dise??os innovadores y desarrollo web con calidad, 
                                ofreciendo a nuestros clientes un acompa??amiento permanente que 
                                d?? soluciones a todas sus necesidades inmediatas y futuras, generando 
                                confianza a trav??s de una buena experiencia para un crecimiento en conjunto.</p>
                            <p><b>Visi??n</b>
                                Ser reconocidos como una empresa de calidad que desarrolla
                                nuevas soluciones de negocio digitales y se desempe??e de 
                                forma ??tica, ofreciendo las mejores herramientas de dise??o
                                y desarrollo web que den como resultado el mejor producto y
                                visibilidad para su compa????a, Pixel Brant no busca un fin 
                                espec??fico sino una innovaci??n continua.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

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
    </body>

</html>

    </body>
</html>
