<%@page import="Modelo.Llamada"%>
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
          <a class="navbar-brand" href="index.jsp">Llamadas</a>
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
        <form method="POST" action="LlamadasServlet">
          <h2 class="text-primary"> Nueva Llamada </h2>  
          <div class="form-group">
            <label for="Telefono">Telefono Marcado</label>
            <input type="number" class="form-control" id="telefono" name="telefono" placeholder="Ej: 6516516" required>
          </div>
          <div class="form-group">
            <label for="Telefono">Duracion</label>
            <input type="number" class="form-control" id="telefono" name="duracion" placeholder="60 minutos" required>
          </div>
          <div class="form-group">
            <label for="habitacion">Habitacion</label><br>
                <select id="comboHotelPerteneciente" name="habitacionHotelPerteneciente">
                </select>
          </div>
          <div class="form-group">
            <label for="tarifa">Tarifa</label><br>
                <select id="tarifa" name="tarifaperteneciente">
                </select>
          </div>
          <div class="form-group">
            <label for="nitcliente">Nit Cliente</label><br>
                <select id="nit" name="nitcliente">
                </select>
          </div>
          <div class="form-group">
              <!-- Boton para enviar los datos a la base de datos -->
              <button class="btn btn-info">Registrar Llamada </button>
          </div>
        </form>
        <script language='javascript'>
            var agregarOpciones = "";
            var valor = "";
            var texto = "";
            <%
                String idHotel[][];
                Llamada hb = new Llamada();
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

            var agregarOpciones = "";
            var valor = "";
            var texto = "";
            <%
                String idTarifa[][];
                Llamada tr = new Llamada();
                idHotel = tr.consultar_IDtarifa();
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
            document.getElementById("tarifa").innerHTML = agregarOpciones;

            var agregarOpciones = "";
            var valor = "";
            var texto = "";
            <%
                String idNit[][];
                Llamada cd = new Llamada();
                idHotel = cd.consultar_nit();
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
            document.getElementById("nit").innerHTML = agregarOpciones; 
        </script>
        
    
    
    <!-- Final de crear Empleado -->
    </body>
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</html>



