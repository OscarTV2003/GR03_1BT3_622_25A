<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv='X-UA-Compatible' content="IE=edge">
    <title>${param.title != null ? param.title : 'MiBarrioApp'}</title>
    <link href="css/baseStyle.css" rel="stylesheet">
    <!-- Bloques para CSS adicionales -->
    <c:if test="${not empty param.extra_css}">
        <link rel="stylesheet" href="${param.extra_css}">
    </c:if>
</head>

<body>
<div class="container">
    <!-- Sidebar - Contenedor izquierdo -->
    <aside class="sidebar">
        <!-- Logo y nombre dentro del sidebar -->
        <div class="logo-nombre glassmorphism-effect">
            <div class="logo">
                <img src="images/iconBarrio.png" alt="Logo MiBarrioApp">
            </div>
            <p>MiBarrioApp</p>
        </div>

        <!-- Menú principal -->
        <nav class="menu">
            <ul>
                <li>
                    <a href="seguridad.jsp">
                        <img src="https://img.icons8.com/?size=100&id=48344&format=png&color=000000" class="menu-icon" alt="Seguridad">
                        <span>Seguridad Comunitaria</span>
                    </a>
                </li>
                <li>
                    <a href="emprendimientos.jsp">
                        <img src="https://img.icons8.com/?size=100&id=77111&format=png&color=000000" class="menu-icon" alt="Emprendimientos">
                        <span>Emprendimientos Locales</span>
                    </a>
                </li>
                <li>
                    <a href="mostrarEventos.jsp">
                        <img src="https://img.icons8.com/?size=100&id=43978&format=png&color=000000" class="menu-icon" alt="Eventos">
                        <span>Eventos del Barrio</span>
                    </a>
                </li>
                <li>
                    <a href="crearEvento.jsp">
                        <img src="https://img.icons8.com/?size=100&id=43978&format=png&color=000000" class="menu-icon" alt="Eventos">
                        <span>Registro de un evento</span>
                    </a>
                </li>
                <li>
                    <a href="reportes.jsp">
                        <img src="https://img.icons8.com/?size=100&id=44004&format=png&color=000000" class="menu-icon" alt="Reportes">
                        <span>Reportes y Alertas</span>
                    </a>
                </li>
                <c:if test="${param.modo == 'admin'}">
                    <li>
                        <a href="configuracion.jsp">
                            <img src="https://img.icons8.com/?size=100&id=52146&format=png&color=000000" class="menu-icon" alt="Configuración">
                            <span>Configuración</span>
                        </a>
                    </li>
                </c:if>
            </ul>
        </nav>

        <!-- Cerrar sesión en la parte inferior -->
        <div class="logout-container">
            <div class="logout glassmorphism-effect">
                <a href="index.jsp">
                    <img src="https://img.icons8.com/?size=100&id=iXqy4WL5y7k7&format=png&color=000000" class="menu-icon" alt="Salir">
                    <span class="cerrarSesion">Cerrar Sesión</span>
                </a>
            </div>
        </div>
    </aside>

    <!-- Contenido principal - Área derecha -->
    <main class="mainContent">
        <c:choose>
            <%-- Si contentPage comienza con '<', es contenido directo --%>
            <c:when test="${fn:startsWith(param.contentPage, '<')}">
                ${param.contentPage}
            </c:when>
            <%-- Si no, es una ruta a incluir --%>
            <c:otherwise>
                <c:if test="${not empty param.contentPage}">
                    <jsp:include page="${param.contentPage}" />
                </c:if>
            </c:otherwise>
        </c:choose>
    </main>
</div>

<!-- Scripts -->
<script src="js/sidebar.js"></script>
<!-- Bloques para JS adicionales -->
<c:if test="${not empty param.extra_js}">
    <script src="${param.extra_js}"></script>
</c:if>
</body>
</html>