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
    <link rel="stylesheet" href="css/base.css">

    <!-- Bloques para CSS adicionales -->
    <c:if test="${not empty param.extra_css}">
        <link rel="stylesheet" href="${param.extra_css}">
    </c:if>

</head>

<body>
<div class="container">
    <header class="encabezado">
        <div class="logo-nombre">
            <div class="logo">
                <img src="images/iconBarrio.png" alt="Logo MiBarrioApp">
            </div>
            <p>MiBarrioApp</p>
        </div>
    </header>

    <div class="side-main">
        <aside class="sidebar">
            <nav class="menu">
                <ul>

                    <li>
                        <a href="seguridad.jsp">
                            <i class="ri-police-car-fill"></i>
                            <span>Seguridad Comunitaria</span>
                        </a>
                    </li>


                    <li>
                        <a href="emprendimientos.jsp">
                            <i class="ri-store-2-fill"></i>
                            <span>Emprendimientos Locales</span>
                        </a>
                    </li>


                    <li>
                        <a href="eventos.jsp">
                            <i class="ri-calendar-event-fill"></i>
                            <span>Eventos del Barrio</span>
                        </a>
                    </li>


                    <li>
                        <a href="reportes.jsp">
                            <i class="ri-alert-fill"></i>
                            <span>Reportes y Alertas</span>
                        </a>
                    </li>


                    <c:if test="${param.modo == 'admin'}">
                        <li>
                            <a href="configuracion.jsp">
                                <i class="ri-settings-3-fill"></i>
                                <span>Configuración</span>
                            </a>
                        </li>
                    </c:if>

                    <!-- Opción de Salir -->
                    <li class="logout">
                        <a href="index.jsp">
                            <i class="ri-logout-box-r-fill"></i>
                            <span>Cerrar Sesión</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </aside>


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
</div>

<!-- Scripts adicionales -->
<script src="js/sidebar.js"></script>

<!-- Bloques para JS adicionales -->
<c:if test="${not empty param.extra_js}">
    <script src="${param.extra_js}"></script>
</c:if>

</body>
</html>