<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.5.0/remixicon.css" crossorigin="" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet" >

    <title>MiBarrioApp-Login</title>
</head>

<body>
<div class="login">
    <img src="images/login.jpg" alt="image" class="login-img" >

    <form action="" class="login-form">
        <div class="encabezado-login">
            <img class="icon-container" src="images/iconBarrio.png">
            <h1 class="login-title">Inicio Sesión</h1>
        </div>
        <div class="login-inputs">
            <div class="login-box">
                <input type="email" class="login-input" placeholder="Cédula" required>
                <i class="ri-mail-fill"></i>
            </div>

            <div class="login-box">
                <input type="password" placeholder="Contraseña" required class="login-input">
                <i class="ri-lock-2-fill"></i>
            </div>
        </div>

        <div class="login-check">
            <div class="login-heck-box">
                <input type="checkbox" class="login-check-input" id="user-check">
                <label for="user-check" class="login-check-label">Recordar usuario</label>
            </div>

            <a href="#" class="login-forgot">Contraseña olvidada?</a>
        </div>

        <button type="submit" class="login-button">Iniciar</button>

        <div class="login-register">
            No tienes una cuenta? <a href="registroUsuario.jsp">Registrar</a>
        </div>

        <div class="login-inicio">
            <a href="index.jsp">Volver Inicio</a>
        </div>

        <div class="login-inicio">
            <a href="base.jsp">Pagina</a>
        </div>
    </form>
</div>
</body>
</html>