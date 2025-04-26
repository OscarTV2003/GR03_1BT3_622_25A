<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registro de Usuario</title>
    <link href="css/registroUsuario.css" rel="stylesheet">
</head>
<body>
<div class="form-container">
    <h2>Registro de Usuario</h2>
    <form action="RegistroMiembroBarrial" method="post" accept-charset="UTF-8">
        <input type="hidden" name="action" value="registrarUsuario">

        <div class="form-group">
            <label for="nombre">Nombre Completo:</label>
            <input type="text" id="nombre" name="nombre" required>
        </div>

        <div class="form-group">
            <label for="cedula">Cédula:</label>
            <input type="text" id="cedula" name="cedula" required>
        </div>

        <div class="form-group">
            <label for="contrasena">Contraseña:</label>
            <input type="password" id="contrasena" name="contrasena" required>
        </div>

        <div class="form-group">
            <label for="codigoBarrio">Código de Barrio:</label>
            <input type="text" id="codigoBarrio" name="codigoBarrio" required>
        </div>

        <button type="submit" class="submit-button">Registrar Usuario</button>
    </form>
    <a href="index.jsp" class="back-link">Volver al inicio</a>
</div>
</body>
</html>