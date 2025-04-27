<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.5.0/remixicon.css" crossorigin="" rel="stylesheet">
    <link href="css/registerUsuario.css" rel="stylesheet">

    <title>MiBarrioApp - Registro</title>
</head>

<body>
<div class="registroU">
    <img src="images/login.jpg" alt="image" class="registroU-img">

    <form action="RegistroMiembroBarrial" method="post" class="registroU-form" accept-charset="UTF-8">
        <input type="hidden" name="action" value="registrarUsuario">

        <div class="encabezado-registroU">
            <img class="icon-container" src="images/iconBarrio.png">
            <h1 class="registroU-title">Registro de Usuario</h1>
        </div>

        <div class="registroU-inputs">
            <div class="registroU-box">
                <input type="text" id="nombre" name="nombre" class="registroU-input" placeholder="Nombre Completo" required>
                <i class="ri-user-3-fill"></i>
            </div>

            <div class="registroU-box">
                <input type="text" id="cedula" name="cedula" class="registroU-input" placeholder="Cédula" required>
                <i class="ri-id-card-fill"></i>
            </div>

            <div class="registroU-box">
                <input type="password" id="contrasena" name="contrasena" class="registroU-input" placeholder="Contraseña" required>
                <i class="ri-lock-2-fill"></i>
            </div>

            <div class="registroU-box">
                <input type="text" id="codigoBarrio" name="codigoBarrio" class="registroU-input" placeholder="Código de Barrio" required>
                <i class="ri-home-4-fill"></i>
            </div>
        </div>

        <button type="submit" class="registroU-button">Registrar Usuario</button>

        <div class="registroU-inicio">
            <a href="index.jsp">Volver al inicio</a>
        </div>
    </form>
</div>
</body>
</html>