<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>MiBarrioApp-Emprendimientos</title>
    <link href="css/emprendimiento.css" rel="stylesheet">
</head>
<body class="body">
<header class="header">
    <div class="div-header-container">
        <div class="name-app">
            <div ><img class="emprendimiento-img" src="images/iconBarrio.png"></div>
            <div class="css-h1"><h1>Emprendimientos</h1></div>
        </div>
    </div>
</header>
<hr>

<div class="main-container">
    <!-- Bloque de categorías (izquierda) -->
    <div class="left-section">
        <div class="category-box">
            <h3>Categorías</h3>
            <ul class="category-list">
                <li><a href="#">Tecnología</a></li>
                <li><a href="#">Alimentos</a></li>
                <li><a href="#">Ropa</a></li>
                <li><a href="#">Servicios</a></li>
                <li><a href="#">Salud</a></li>
            </ul>
        </div>
    </div>

    <!-- Bloque de publicaciones de emprendimientos (derecha) -->
    <div class="right-section">

        <!-- Bloque superior: Botones y barra de búsqueda -->
        <div class="top-bar">
            <form class="search-bar" action="#">
                <input type="text" placeholder="Buscar emprendimientos..." class="search-input">
                <button type="submit" class="search-button">Buscar</button>
            </form>

            <div class="action-buttons">
                <a href="registroEmprendimiento.jsp">   <!-- PARA CREAR LOS EMPRENDIMIENTOS -->
                    <button class="button">Nuevo Emprendimiento</button>
                </a>
                <a href="verEmprendimientos.jsp"> <!-- PARA VER MIS EMPRENDIMIENTOS -->
                    <button class="button">Mis Emprendimientos</button>
                </a>
            </div>
        </div>

        <!-- Bloque de publicaciones -->
        <div class="emprendimientos-list">
            <div class="emprendimiento-item">
                <h4>Emprendimiento 1</h4>
                <p>Descripción del emprendimiento 1...</p>
            </div>
            <div class="emprendimiento-item">
                <h4>Emprendimiento 2</h4>
                <p>Descripción del emprendimiento 2...</p>
            </div>
            <div class="emprendimiento-item">
                <h4>Emprendimiento 3</h4>
                <p>Descripción del emprendimiento 3...</p>
            </div>
            <!-- Agrega más emprendimientos aquí -->
        </div>
    </div>
</div>

</body>
</html>
