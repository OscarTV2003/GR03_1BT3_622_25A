<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.5.0/remixicon.css" crossorigin="" rel="stylesheet">
    <link href="css/registroEvento.css" rel="stylesheet">
    <title>Crear eventos.Evento</title>

</head>
<body>
<div class="registroEvento">
    <img src="images/evento.jpg" alt="image" class="registro-img">

    <form action="CrearEvento" method="post" class="registro-form" accept-charset="UTF-8">
        <input type="hidden" name="action" value="crearEvento">

        <div class="titulo-evento">
            <h1 class="registro-title">Registro eventos</h1>
        </div>

        <div class="registro-inputs">
            <div class="registro-box">
                <input type="text" id="nombreEvento" name="nombreEvento" class="registro-input" placeholder="Nombre del eventos" required>
            </div>

            <div class="registro-box">
                <input type="text" id="fechaInicio" name="fechaInicio" class="registro-input" placeholder="Fecha (dd/mm/aaaa)" required>
            </div>

            <div class="registro-box">
                <input type="text" id="descripcion" name="descripcion" class="registro-input" placeholder="Descripción" required>
            </div>

            <div class="registro-box">
                <input type="text" id="hora" name="hora" class="registro-input" placeholder="Hora" required>
            </div>

            <div class="registro-box">
                <input type="text" id="imagen" name="imagen" class="registro-input" placeholder="Imagen" required>
            </div>

        </div>

        <button type="submit" class="submit-button">Registrar evento</button>

        <div class="registro-inicio">
            <a href="base.jsp">Volver al inicio</a>
        </div>

    </form>

</div>
</body>
</html>
