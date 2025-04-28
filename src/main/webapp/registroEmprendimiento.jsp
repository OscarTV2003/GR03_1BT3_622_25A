<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Emprendimiento</title>
    <link href="css/crearEmprendimiento.css" rel="stylesheet">  <!-- Asegúrate de vincular tu archivo CSS -->
</head>
<body>

<!-- Botón para regresar a la página anterior -->
<button class="back-button" onclick="window.history.back()">Volver</button>

<!-- Contenedor del formulario -->
<div class="form-container">
    <form id="createEmprendimientoForm" action="crearEmprendimientoServlet" method="POST" enctype="multipart/form-data">
        <h2>Crear Emprendimiento</h2>

        <!-- Nombre del emprendimiento -->
        <label for="nombre">Nombre del Emprendimiento:</label>
        <input type="text" id="nombre" name="nombre" required>

        <!-- Descripción del emprendimiento -->
        <label for="descripcion">Descripción:</label>
        <textarea id="descripcion" name="descripcion" rows="4" required></textarea>

        <!-- Precio del emprendimiento (campo opcional) -->
        <label for="precio">Precio (opcional):</label>
        <input type="number" id="precio" name="precio">

        <!-- Subir imágenes (solo imágenes estáticas permitidas y máximo 5 imágenes) -->
        <!--<label for="imagenes">Subir imágenes (máximo 5):</label>
        <input type="file" id="imagenes" name="imagenes" accept=".jpg, .jpeg, .png" multiple required> -->

        <!-- Botón para enviar el formulario -->
        <button type="submit">Crear Emprendimiento</button>
    </form>
</div>

<!-- Mensaje flotante -->
<div id="message" class="message">
    Emprendimiento creado exitosamente.
</div>

<div id="errorMessage" class="message error-message">
    Ha ocurrido un error al crear el emprendimiento.
</div>

<!-- <script>
    // Mostrar el mensaje flotante
    function showMessage(success) {
        const messageElement = success ? document.getElementById('message') : document.getElementById('errorMessage');
        messageElement.style.display = 'block';
        setTimeout(() => {
            messageElement.style.display = 'none';
            if (success) {
                // Si fue exitoso, redirigimos a la página de emprendimientos después de mostrar el mensaje
                window.location.href = 'emprendimientos.jsp'; // <-- ajusta el nombre de tu JSP si es necesario
            }
        }, 3000);
    }

    // Manejar el envío del formulario manualmente con fetch
    const form = document.getElementById('createEmprendimientoForm');
    form.addEventListener('submit', function (e) {
        e.preventDefault(); // Evitar el envío tradicional del formulario

        const fileInput = document.getElementById('imagenes');
        const files = fileInput.files;

        if (files.length > 5) {
            alert('Puedes subir un máximo de 5 imágenes.');
            return;
        }

        const formData = new FormData(form);

        fetch('crearEmprendimiento', {
            method: 'POST',
            body: formData
        })
            .then(response => response.text())
            .then(result => {
                if (result.trim() === 'success') {
                    showMessage(true);
                } else {
                    showMessage(false);
                }
            })
            .catch(error => {
                console.error('Error:', error);
                showMessage(false);
            });
    });
</script> -->


</body>
</html>
