<%@page import="Modelo.Empleado"%>
<%@page import="java.sql.*"%>
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
         <%
             String id=request.getParameter("id");
             
            Connection cnx=null;       
            Statement sta=null;
            ResultSet rs=null;
            
            try{
            Class.forName("com.mysql.jdbc.Driver");
            cnx=DriverManager.getConnection
            ("jdbc:mysql://localhost/hotel?user=root&password=");
            
            sta=cnx.createStatement();
            rs=sta.executeQuery("select * from llamadas where id_llamada='"+id+"'");
            
            while(rs.next()){
             
                


             %>
         
        <form action ="">
          <h2 class="text-primary">Actualizando Llamada</h2>  
          <div class="form-group">
            <label for="Nombre">ID</label>
            <input class="form-control" type="text" name="txtId" value="<%=rs.getString(1)%>" readonly="readonly">
          </div> 
          <div class="form-group">
            <label for="Estado">Telefono Marcado</label><br>
            <input class="form-control" type="number" value="<%=rs.getString(2)%>" name="txtTelefono" >
          </div>
          <div class="form-group">
            <label for="Estado">Duracion</label><br>
            <input class="form-control" type="number" value="<%=rs.getString(3)%>" name="txtDuracion" >
          </div>
          <div class="form-group">
            <label for="Estado">ID HABITACION</label><br>
            <input class="form-control" type="number" value="<%=rs.getString(4)%>" name="txtHabitacion" >
          </div>
          <div class="form-group">
            <label for="CampoDireccion">ID TARIFA </label><br>
            <input class="form-control" type="number" name="txtTarifa" value="<%=rs.getString(5)%>">
          </div>      
          <div class="form-group">
            <label for="CampoDireccion">NIT CLIENTE </label><br>
            <input class="form-control" type="text" name="txtCliente" value="<%=rs.getString(6)%>">
          </div> 
          
          <div class="form-group"> 
                <input class="btn btn-danger" type="submit" name="btnGrabar" value="Actualizar Llamada"></th>
       </div>
        </form>
                
                    <%
                        }
}catch (Exception e){}

if(request.getParameter("btnGrabar")!=null){

            int ide =Integer.parseInt(request.getParameter("txtId"));
            int tel =Integer.parseInt(request.getParameter("txtTelefono"));
            int dur =Integer.parseInt(request.getParameter("txtDuracion"));
            int hab =Integer.parseInt(request.getParameter("txtHabitacion"));
            int tar =Integer.parseInt(request.getParameter("txtTarifa"));
            String nit =request.getParameter("txtCliente");

            sta.executeUpdate("UPDATE llamadas SET telefono_marcado="+tel+",duracion="+dur+",id_habitacion="+hab+",id_tarifa="+tar+",nit_cliente='"+nit+"' WHERE id_llamada="+ide+" ");

            request.getRequestDispatcher("csllamada.jsp").forward(request, response);

}

                        
                        %>
    <!-- Final de crear Empleado -->
    </body>

    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</html>



