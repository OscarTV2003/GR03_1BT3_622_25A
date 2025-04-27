<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Crear Evento</title>
    <link href="css/registroEvento.css" rel="stylesheet">
</head>
<body>
<div class="form-container">
    <h2>Registro de Evento</h2>
    <form action="CrearEvento" method="post" accept-charset="UTF-8">
        <input type="hidden" name="action" value="crearEvento">

        <div class="form-group">
            <label for="nombreEvento">Nombre del Evento:</label>
            <input type="text" id="nombreEvento" name="nombreEvento" required>
        </div>

        <div class="form-group">
            <label for="fechaInicio">Fecha del Evento:</label>
            <input type="text" id="fechaInicio" name="fechaInicio" required>
        </div>

        <div class="form-group">
            <label for="descripcion">Descripción:</label>
            <input type="text" id="descripcion" name="descripcion" required>
        </div>

        <div class="form-group">
            <label for="hora">Hora del evento:</label>
            <input type="text" id="hora" name="hora" required>
        </div>

        <div class="form-group">
            <label for="imagen">Imagen:</label>
            <input type="text" id="imagen" name="imagen" required>
        </div>

        <button type="submit" class="submit-button">Registrar evento</button>
    </form>
    <a href="index.jsp" class="back-link">Volver al inicio</a>
</div>
</body>
</html>
