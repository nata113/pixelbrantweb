<!DOCTYPE html>
<html lang="es">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Calendario</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- FullCalendar -->
        <link href='css/fullcalendar.css' rel='stylesheet' />


        <!-- Custom CSS -->

    </head>

    <body>
        <div class="container" style="padding-top: 120px; padding-bottom:40px">
            <h1>Agenda</h1>
            <div id="calendar" class="col-md-12">
            </div>

            <!-- /.row -->

            <!-- Modal -->
            <div class="modal fade" id="ModalAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <form class="form-horizontal" method="get" action="ServletAgenda">

                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">Agregar Evento</h4>
                            </div>
                            <div class="modal-body">

                                <div class="form-group">
                                    <label for="title" class="col-sm-2 control-label">Titulo</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="title" name="title"  placeholder="Titulo">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="title" class="col-sm-2 control-label">Descripción</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control" id="description" name="description"  placeholder="Descripción" maxlength="150"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="start" class="col-sm-2 control-label">Fecha Inicial</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="start" class="form-control" id="start">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="end" class="col-sm-2 control-label">Fecha Final</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="end" class="form-control" id="end">
                                    </div>
                                </div>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-info" data-dismiss="modal">Cerrar</button>
                                <button type="submit" class="btn btn-primary" value="GUARDAR" name="opc">Guardar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>



            <!-- Modal -->
            <div class="modal fade" id="ModalEdit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <form class="form-horizontal" method="get" action="ServletAgenda">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">Modificar Evento</h4>
                            </div>
                            <div class="modal-body">

                                <div class="form-group">
                                    <label for="title" class="col-sm-2 control-label">Titulo</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="titlee" class="form-control" id="titlee" placeholder="Titulo" required="">
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="title" class="col-sm-2 control-label">Description</label>
                                    <div class="col-sm-10">
                                        <textarea name="descriptione" class="form-control" id="descriptione" placeholder="Descripción"  maxlength="150"></textarea>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="start" class="col-sm-2 control-label">Fecha Inicial</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="starte" class="form-control" id="starte" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="end" class="col-sm-2 control-label">Fecha Final</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="ende" class="form-control" id="ende" required>
                                    </div>
                                </div>


                                <input type="hidden" name="id" class="form-control" id="id">


                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-warning" value="ELIMINAR" name="opc">Eliminar</button>
                                <button type="submit" class="btn btn-primary" value="EDITAR" name="opc">Guardar</button>
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.container -->

        <!-- jQuery Version 1.11.1 -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <!-- FullCalendar -->
        <script src='js/moment.min.js'></script>
        <script src='js/fullcalendar/fullcalendar.min.js'></script>
        <script src='js/fullcalendar/fullcalendar.js'></script>
        <script src='js/fullcalendar/locale/es.js'></script>

        <script>

            $(document).ready(function () {

                var date = new Date();
                var yyyy = date.getFullYear().toString();
                var mm = (date.getMonth() + 1).toString().length == 1 ? "0" + (date.getMonth() + 1).toString() : (date.getMonth() + 1).toString();
                var dd = (date.getDate()).toString().length == 1 ? "0" + (date.getDate()).toString() : (date.getDate()).toString();

                $('#calendar').fullCalendar({

                    events:<jsp:include page="/CalendarJsonServlet" />,
                    eventColor: 'red',
                    plugins: 'timeGrid',
                    timeZone: 'UTC',
                    header: {
                        language: 'es',
                        left: 'prev,next today',
                        center: 'title',
                        right: 'month,agendaWeek,agendaDay',

                    },

                    defaultDate: yyyy + "-" + mm + "-" + dd,
                    eventLimit: false, // allow "more" link when too many events
                    selectable: true,
                    disableDragging: true,
                    editable: false,
                    eventStartEditable: false,
                    minTime: "05:00:00",
                    maxTime: "22:00:00",
                    timeFormat: 'H:mm',
                    select: function (start) {

                        $('#ModalAdd #start').val(moment(start).set('hour', 8).format('YYYY-MM-DD HH:mm:ss'));
                        $('#ModalAdd #end').val(moment(start).set('hour', 9).format('YYYY-MM-DD HH:mm:ss'));
                        $('#ModalAdd').modal('show');
                    },
                    eventRender: function (event, element) {
                        element.bind('dblclick', function () {
                            $('#ModalEdit #id').val(event.id);
                            $('#ModalEdit #titlee').val(event.title);
                            $('#ModalEdit #descriptione').val(event.description);
                            var dstart = event.start.format('YYYY-MM-DD HH:mm:ss');
                            $('#ModalEdit #starte').val(dstart);
                            var dend = event.end.format('YYYY-MM-DD HH:mm:ss');
                            $('#ModalEdit #ende').val(dend);
                            $('#ModalEdit').modal('show');
                        });
                    }

                });

            });

        </script>

    </body>

</html>