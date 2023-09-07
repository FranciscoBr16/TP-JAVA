<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Registro</title>
        <link rel="stylesheet" href="../style/styleSignUp.css" />
        <link rel="stylesheet" href="../style/generalStyles.css" />
        <link rel="shortcut icon" href="../img/logo.ico" type="image/x-icon" />
    </head>
    <body>
        <div class="formulario">
            <div class="headerForm">
                <p>¡Unite al Club!</p>
            </div>
            <form
                action="/GYM/SvSignUp"
                method="POST"
                class="formulario-campos"
            >
                <div class="campo">
                    <label for="username">Nombre de Usuario:</label>
                    <input type="text" name="username" id="username" />
                </div>
                <div class="campo">
                    <label for="password">Contrase�a:</label>
                    <input type="password" name="password" id="password" />
                </div>
                <div class="campo">
                    <label for="nombre">Nombre:</label>
                    <input type="text" name="name" id="name" />
                </div>
                <div class="campo">
                    <label for="apellido">Apellido:</label>
                    <input type="text" name="surname" id="surname" />
                </div>
                <div class="campo">
                    <label for="email">Correo Electr�nico:</label>
                    <input type="email" name="email" id="email" />
                </div>
                <div class="campo">
                    <label for="phonenumber">Tel�fono:</label>
                    <input type="text" name="phonenumber" id="phonenumber" />
                </div>
                <div class="campo">
                    <label for="birthdate">Fecha de Nacimiento</label>
                    <input type="date" name="fecha" id="birthdate" />
                </div>
                <div class="botonRegister">
                    <button type="submit">Registrarse</button>
                    <button href="index.jsp">Volver al Inicio</button>
                </div>
            </form>
        </div>
    </body>
</html>
