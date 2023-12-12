<%@page import="entities.Indumentaria"%>
<%@page import="entities.Suplemento"%>
<%@page import="entities.Producto"%>
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
<title>Log In</title>

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


<link rel="stylesheet" type="text/css" href="/GYM/style/formularioEstilos.css" />
<link rel="stylesheet" type="text/css" href="/GYM/style/estilosGenerales.css" />
<link rel="stylesheet" type="text/css" href="/GYM/style/estilosGenerales2.css" />

<link rel="shortcut icon" href="/GYM/img/logo.ico" type="image/x-icon" />

<% Usuario user = (Usuario) session.getAttribute("user");
 Producto producto = (Producto) request.getAttribute("producto");
 
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
                            <li class="nav-item">
                                <a class="nav-link text-light active" id="links" aria-current="page" href="/GYM/index.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-light" id="links" href="/GYM/SvAbono">Planes</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-light" id="links" href="/GYM/SvProductos" >Tienda</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-light" id="links" href="/GYM/pages/reservas.jsp" >Reservas</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-light" id="links" href="/GYM/SvEmpleados" >Sobre Nosotros</a>
                            </li>
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
		<div class="formulario">
		<div class="headerForm">
			<p class="titulo">Modifica el <span class="anaranjado"> Producto </span></p>
		</div>
		<hr>
		
					
					
			<form action="/GYM/SvModificarPrecioProducto" method= "POST" class="formulario-campos" >
			<input type="hidden" name="id" value="<%=producto.getIdProducto()%>">
			
			<div class="campo">
			<label for="precio">Precio:</label>
					<input class="inputMediano" type="number" name="precio" id="precio" value="<%=producto.getPrecio().getPrecio()%>"/>
					
				</div>
				<div class="campo">
					<label for="fecha">Fecha:</label> 
					<input class="inputLargo" type="date" name="fecha" id="fecha" value="<%=producto.getPrecio().getFechaDesde()%>"/>
				</div>
			<button class="botonPrecio" type="submit"> Modificar Precio</button>
			</form>
			<form action="/GYM/SvModificacionProducto" method="POST" class="formulario-campos">
				<div class="campo">
					<label for="idproducto">Id producto:</label> 
					<input class="inputCorto" type="number" name="id_producto"  value="<%=producto.getIdProducto()%>" readonly/>
				</div>
				
				<div class="campo">
					<label for="nombre">Nombre Producto:</label> 
					<input class="inputMediano" type="text" name="nombre" id="nombre" value="<%=producto.getNombre()%>" />
				</div>
				<div class="campo">
					<label for="stock">Stock:</label> 
					<input class="inputCorto" type="number" name="stock" id="stock" value="<%=producto.getStock()%>"/>
				</div>
				
				<div class="campo">
					<label for="descripcion">Descripcion:</label> 
					<input class="inputLargo" type="text" name="descripcion" id="descripcion" value="<%=producto.getDescripcion()%>"/>
				</div>
				
				
				<% if(producto instanceof Suplemento) { Suplemento s = (Suplemento) producto; %>
				<div class="campo">
					<label for="unidad">Unidad:</label> 
					<input class="inputLargo" type="text" name="unidad" id="unidad" value="<%=s.getUnidad()%>"/>
				</div>
				<div class="campo">
					<label for="valor">Valor:</label> 
					<input class="inputLargo" type="number" name="valor" id="valor" value="<%=s.getValor()%>"/>
				</div>
				<%} else { Indumentaria i = (Indumentaria) producto;%>
				<div class="campo">
					<label for="talle">Talle:</label> 
					<input class="inputLargo" type="text" name="talle" id=talle value="<%=i.getTalle()%>"/>
				</div>
					
				<%} %>
				
				<div class="bottomForm">
					<button class="boton" type="submit"> Aplicar cambios</button>
				</div>
				</form>
			
		</div>

		
	</div>

</body>

</html>