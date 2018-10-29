<%@page import="Modelo.Empleado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="main.css">
                
        <title>Creando Empleado</title>
    </head>
    <!-- Inicio del navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
          <a class="navbar-brand" href="index.jsp">Empleado</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Incio<span class="sr-only">(current)</span></a>
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
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="cncliente.jsp">Crear Nuevo Cliente</a>
                <a class="dropdown-item" href="cscliente.jsp">Consultar y Actualizar Cliente</a>
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
    <!-- Inicio de crear Empleado -->
        <form method="POST" action="EmpleadoServlet">
          <h2 class="text-primary"> Nuevo Empleado</h2>  
          <div class="form-group">
            <label for="Nombre">Nombre Empleado</label>
            <input type="text" class="form-control" id="nitCliente" name="nombre_empleado" placeholder="Ej: Omar" required>
          </div>
          <div class="form-group">
            <label for="Estado">Estado</label><br>
            <select name="estado">
                <option value="Activo">Activo</option>
                <option value="Desactivado">Desactivado</option>
            </select>
          </div>
          <div class="form-group">
            <label for="CampoDireccion">Dirección del Empleado </label>
            <input type="text" class="form-control" id="direccionCliente" name="direccion_empleado" placeholder="Ej: 6ta calle a 5301 Guatemala" required>
          </div>
          <div class="form-group">
            <label for="Hotel">Hotel</label><br>
                <select id="comboHotelPerteneciente" name="habitacionHotelPerteneciente">
                </select>
          </div>
          <div class="form-group">
              <!-- Boton para enviar los datos a la base de datos -->
              <button class="btn btn-info">Registrar Empleado </button>
          </div>
        </form>
        <script language='javascript'>
            var agregarOpciones = "";
            var valor = "";
            var texto = "";
            <%
                String idHotel[][];
                Empleado hb = new Empleado();
                idHotel = hb.consultar_IDhotel();
                //String prueba = idHotel[0][1].toString();
                //System.out.println(prueba);
                for (int i = 0; i < idHotel.length; i++) {

            %>
            valor = "<%=idHotel[i][0].toString()%>";
            texto = "<%=idHotel[i][1].toString()%>";
            agregarOpciones += "<option value='" + valor + "'>" + texto + "</option>";



            <%

                }

            %>
            //console.log(agregarOpciones);
            document.getElementById("comboHotelPerteneciente").innerHTML = agregarOpciones;
        </script>
    
    
    
    <!-- Final de crear Empleado -->
    </body>
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</html>



