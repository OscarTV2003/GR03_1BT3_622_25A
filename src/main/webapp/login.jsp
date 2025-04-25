<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Iniciar Sesión</title>
    <link href="css/login.css" rel="stylesheet">
</head>
<body>
<div class="form-container">
    <h2>Iniciar Sesión</h2>
    <form action="AplicacionWeb" method="post" accept-charset="UTF-8">
        <input type="hidden" name="action" value="iniciarSesion">

        <div class="form-group">
            <label for="cedula">Cédula:</label>
            <input type="text" id="cedula" name="cedula" required>
        </div>

        <div class="form-group">
            <label for="contrasena">Contraseña:</label>
            <input type="password" id="contrasena" name="contrasena" required>
        </div>

        <button type="submit" class="submit-button">Iniciar Sesión</button>
    </form>
    <a href="index.jsp" class="back-link">Volver al inicio</a>
</div>
</body>
</html>