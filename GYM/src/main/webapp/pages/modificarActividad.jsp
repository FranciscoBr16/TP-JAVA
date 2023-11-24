<%@page import="entities.Empleado"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entities.Clase"%>
<%@page import="entities.Abono"%>
<%@page import="entities.Contrato"%>
<%@page import="entities.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Modificar Actividad</title>

<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@347&display=swap"
	rel="stylesheet" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous">
  </script>


<link rel="stylesheet" type="text/css" href="/GYM/style/modificacionEstilos.css" />
<link rel="stylesheet" type="text/css" href="/GYM/style/estilosGenerales.css" />
<link rel="stylesheet" type="text/css" href="/GYM/style/estilosGenerales2.css" />

<link rel="shortcut icon" href="/GYM/img/logo.ico" type="image/x-icon" />

<% Usuario user = (Usuario) session.getAttribute("user");
 Clase clase = (Clase) request.getAttribute("clase");
 ArrayList<Empleado> empleados = (ArrayList<Empleado>) request.getAttribute("empleados");
 session.setAttribute("idclase", clase.getIdClase());
%>

</head>

<body>
	<header>
		<nav class="navbar navbar-expand-lg">
			<div class="container-fluid">
				<a class="navbar-brand" href="/GYM/index.jsp"><img
					src="/GYM/img/logo.png" alt="logo del gimnasio" /></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link text-light"
							id="links" aria-current="page" href="/GYM/index.jsp">Inicio</a></li>
						<li class="nav-item"><a class="nav-link text-light"
							id="links" href="/GYM/SvAbono">Planes</a></li>
						<li class="nav-item"><a class="nav-link text-light"
							id="links" href="#">Tienda</a></li>
						<li class="nav-item"><a class="nav-link text-light"
							id="links" href="/GYM/pages/reservas.jsp">Reservas</a></li>
						<li class="nav-item"><a class="nav-link text-light"
							id="links" href="#">Sobre Nosotros</a></li>
					</ul>
				</div>
				<% if (user == null){ %>
                    <div class="cajalogin">
                        <a id="textoregistro" href="pages/signUp.jsp"
                            >Registrate</a
                        >
                        <a href="/GYM/pages/logIn.jsp"><button class="boton2">Iniciar Sesi�n</button></a
                        >
                    </div>
                    <% } else {%>
                    <div class="cajaUser">
                        <a class="nombreUsuario" href="/GYM/SvUsuario"><%= user.getNombre() %> <%= user.getApellido()%></a>
                        <img class ="imglogo" src="<%=user.getImagen()%>"></img>
                    </div>
                    <%} %>
			</div>
		</nav>
	</header>

	<div class="contenedor">
	
		<div class="cajaModificar">
		<div class="headerForm">
			<p class="titulo">Modifica la <span class="anaranjado">Actividad</span></p>
		</div>
		<hr>
		
				<div class="campoCentrado">
					<img class="imgMuestra" src="<%=clase.getImagen()%>">
					<a href="/GYM/pages/modificarImagenActividad.jsp"><button class="boton4">Cambiar Im�gen</button></a>		
				</div>

			<form action="/GYM/SvModificarActividad" method="POST" class="formulario-campos">
				<div class="campo">
					<label for="idClase">Id Clase:</label> 
					<input class="inputCorto" type="number" name="idClase" id="idAbono" value="<%=clase.getIdClase()%>" readonly/>
				</div>
				
				<div class="campo">
					<label for="nombreClase">Nombre Actividad:</label> 
					<input class="inputMediano" type="text" name="nombreClase" id="nombreClase" value="<%=clase.getNombre()%>" required/>
				</div>
				<div class="campo">
					<label for="descripcion">Descripcion:</label> 
					<input class ="inputLargo" type="text" name="descripcion" id="descripcion" value="<%=clase.getDescripcion()%>" required/>
				</div>
				<div class="campo">
					<label for="cupo">Cupo:</label>
					<input class="inputCorto" type="number" name="cupo" id="cupo" value="<%=clase.getCupo()%>" required/>
				</div>
				<div class="campo">
				<label for="opciones">D�a:</label>
					<select name="dia" id="opciones">
        				<option value="Lunes" <%if(clase.getDia().equals("Lunes")){ %> selected <%} %>>Lunes</option>
        				<option value="Martes" <%if(clase.getDia().equals("Martes")){ %> selected <%} %>>Martes</option>
        				<option value="Miercoles" <%if(clase.getDia().equals("Miercoles")){ %> selected <%} %>>Miercoles</option>
        				<option value="Jueves" <%if(clase.getDia().equals("Jueves")){ %> selected <%} %>>Jueves</option>
        				<option value="Viernes" <%if(clase.getDia().equals("Viernes")){ %> selected <%} %>>Viernes</option>
    				</select>
					<label for="horario">Horario:</label> 
					<input class="inputMediano" type="number" name="horario" id="horario" value="<%=clase.getHorario()%>" required/> 
				</div>
				
				<div class="campo">
				<label for="profesor">Profesor:</label>
   					<select name="idEmpleado" id="idEmpleado">
   					<% for (Empleado emp : empleados){ %>
        				<option value="<%=emp.getIdEmpleado()%>"<%if(emp.getIdEmpleado() == clase.getEmpleado().getIdEmpleado()){%> selected <%} %>> <%=emp.getNombre()%> <%=emp.getApellido()%></option>
        				<%}%>
        			
    				</select>
				</div>
				
				

				<div class="campo">
				<label for="opciones">Tipo:</label>
					<input type="text" class="inputMediano" name="tipo" value="actividad" readonly/>
				</div>
				
				
				<div class="bottomForm">
					<button class="boton" type="submit"> Aplicar cambios </button>
				</div>
				</form>
				
				
					
			
			
		</div>

		
	</div>

</body>

</html>