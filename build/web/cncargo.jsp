<%-- 
    Document   : index
    Created on : Oct 27, 2018, 9:17:34 AM
    Author     : vinic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Crear Cargo Extra</title>
    </head>
    <!-- Inicio del navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="index.jsp">Cargos Extras</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">Ir a Inicio</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Habitaciones
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="cnhabitacion.jsp">Crear Nueva Habitación</a>
                        <a class="dropdown-item" href="cshabitacion.jsp">Consultar Habitaciones</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Empleados
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="cnempleado.jsp">Crear Nuevo Empleado</a>
                        <a class="dropdown-item" href="csempleado.jsp">Consultar Empleados Activos</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Tarifas
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="cntarifa.jsp">Crear Nueva Tarifa</a>
                        <a class="dropdown-item" href="cstarifa.jsp">Consultar Tarifas</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Cargos Extras
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="cncargo.jsp">Crear Nuevo Cargo Extra</a>
                        <a class="dropdown-item" href="cscargo.jsp">Consultar Cargos Extras</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Llamadas
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="cnllamada.jsp">Crear Nueva Llamada</a>
                        <a class="dropdown-item" href="csllamada.jsp">Consultar Llamadas</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Clientes
                        <span class="sr-only">(current)</span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="cncliente.jsp">Crear Nuevo Cliente</a>
                        <a class="dropdown-item" href="cscliente.jsp">Consultar y Actualizar Clientes</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Reservaciones
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="cnreservacion.jsp">Crear Nueva Reservacion</a>
                        <a class="dropdown-item" href="csreservacion.jsp">Consultar Reservaciones</a>
                    </div>
                </li>      

            </ul>
        </div>
    </nav>
    <body>
        <!-- Inicio del index -->


    <center>
        <div>
            <h1>Crear nuevo Cargos Extras</h1>
        </div>
    </center>
    <br>
    <center>
        <div style="width: 80%; border: solid 1px #000000; ">
            <form style="margin: 2%" method="POST" action="CargoExtraServlet">



                <div>
                    <label style="font-weight: 700">Descripción</label>
                    <br>
                    <textarea style="width: 70%; height: 150px;" name="descripcionCargoExtra"></textarea>
                </div>
                <br>
                <div>
                    <label style="font-weight: 700">Valor</label>
                    <br>
                    <input type="text" style="width: 50px;" name="valorCargoExtra"/>
                </div>
                <br>
                <div>
                    <button>Registrar</button>
                </div>
            </form>
        </div>
    </center>


    <!-- Final del index -->
</body>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</html>

