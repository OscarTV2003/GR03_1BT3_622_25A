<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.5.0/remixicon.css" crossorigin="" rel="stylesheet">
    <link href="css/registerBarrio.css" rel="stylesheet">

    <title>MiBarrioApp - Registro de Barrio</title>
</head>

<body>
<div class="registro">
    <img src="images/login.jpg" alt="image" class="registro-img">

    <form action="RegistroBarrio" method="post" class="registro-form" accept-charset="UTF-8">
        <input type="hidden" name="action" value="registrarBarrio">

        <div class="encabezado-registro">
            <img class="icon-container" src="images/iconBarrio.png">
            <h1 class="registro-title">Registro Barrio</h1>
        </div>

        <div class="registro-inputs">
            <div class="registro-box">
                <input type="text" id="nombre" name="nombre" class="registro-input" placeholder="Nombre del Barrio" required>
                <i class="ri-community-fill"></i>
            </div>

            <div class="registro-box">
                <input type="text" id="parroquia" name="parroquia" class="registro-input" placeholder="Parroquia" required>
                <i class="ri-map-pin-2-fill"></i>
            </div>

            <div class="registro-box">
                <input type="text" id="codigoBarrio" name="codigoBarrio" class="registro-input" placeholder="Código de Barrio" required>
                <i class="ri-hashtag"></i>
            </div>
        </div>

        <button type="submit" class="registro-button">Registrar Barrio</button>

        <div class="registro-inicio">
            <a href="index.jsp">Volver al inicio</a>
        </div>
    </form>
</div>
</body>
</html>
