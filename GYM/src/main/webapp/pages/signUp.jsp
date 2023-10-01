<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Registro</title>

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


<link rel="stylesheet" type="text/css" href="../style/generalStyles.css" />
<link rel="stylesheet" type="text/css" href="../style/generalStyles2.css" />
<link rel="stylesheet" type="text/css" href="../style/styleRegister.css" />


<link rel="shortcut icon" href="../img/logo.ico" type="image/x-icon" />
</head>

<header>
	<nav class="navbar navbar-expand-lg">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp"><img
				src="../img/logo.png" alt="logo del gimnasio" /></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link text-light active"
						id="links" aria-current="page" href="index.jsp">Inicio</a></li>
					<li class="nav-item"><a class="nav-link text-light" id="links"
						href="/GYM/SvAbono">Planes</a></li>
					<li class="nav-item"><a class="nav-link text-light" id="links"
						href="#">Tienda</a></li>
					<li class="nav-item"><a class="nav-link text-light" id="links"
						href="#">Reservas</a></li>
					<li class="nav-item"><a class="nav-link text-light" id="links"
						href="#">Sobre Nosotros</a></li>
				</ul>
			</div>

			<div class="cajalogin">
				<a id="textoregistro" href="pages/signUp.jsp">Registrate</a> <a
					href="pages/logIn.jsp"><button class="boton2">Iniciar
						Sesion</button></a>
			</div>

		</div>
	</nav>
</header>

<body>


	<div class="contenedor">
		<div class="formulario">
			<div class="headerForm">
				<p>Unite al Club!</p>
			</div>
			<form action="/GYM/SvSignUp" method="POST" class="formulario-campos">
				<div class="campo">
					<label for="dni">Numero de Documento (DNI):</label> <input
						type="number" name="dni" id="dni" required min="1000000"
						max="99999999" /> <label for="password">Contrase�a:</label>
					<input type="password" name="password" id="password" required />
				</div>
				<div class="campo">
					<label for="nombre">Nombre:</label> <input type="text" name="name"
						id="name" required /> <label for="apellido">Apellido:</label> <input
						type="text" name="surname" id="surname" required />
				</div>
				<div class="campo">
					<label for="email">Correo Electr�nico:</label> <input type="email"
						name="email" id="email" required />
				</div>
				<div class="campo">
					<label for="phonenumber">Tel�fono:</label> <input type="text"
						name="phonenumber" id="phonenumber" required />
				</div>
				<div class="campo">
					<label for="birthdate">Fecha de Nacimiento:</label> <input
						type="date" name="birthdate" id="birthdate" required />
				</div>
				<div>
					<button class="boton" type="submit">Registrarse</button>

				</div>
			</form>
		</div>
	</div>
</body>
</html>
