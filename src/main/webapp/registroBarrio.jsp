<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registro de Barrio</title>
    <link href="css/registroBarrio.css" rel="stylesheet">
</head>
<body>
<div class="form-container">
    <h2>Registro de Barrio</h2>
    <form action="RB" method="post" accept-charset="UTF-8">
        <input type="hidden" name="action" value="registrarBarrio">

        <div class="form-group">
            <label for="nombre">Nombre del Barrio:</label>
            <input type="text" id="nombre" name="nombre" required>
        </div>

        <div class="form-group">
            <label for="parroquia">Parroquia:</label>
            <input type="text" id="parroquia" name="parroquia" required>
        </div>

        <div class="form-group">
            <label for="codigoBarrio">Código de Barrio:</label>
            <input type="text" id="codigoBarrio" name="codigoBarrio" required>
        </div>

        <button type="submit" class="submit-button">Registrar Barrio</button>
    </form>
    <a href="index.jsp" class="back-link">Volver al inicio</a>
</div>
</body>
</html>