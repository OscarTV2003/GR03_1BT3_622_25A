<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="eventos.Evento" %>

<html>
<head>
    <title>Lista de Eventos</title>
</head>
<body>
<h1>Eventos Registrados</h1>
<ul>
    <%
        List<Evento> eventos = (List<Evento>) request.getAttribute("listaEventos");
        for (Evento evento : eventos) {
    %>
    <li><strong><%= evento.getNombreEvento() %></strong> - <%= evento.getFechaInicio() %>
        en <%= evento.getDescripcion()%>, hora: <%= evento.getHora()%>, Imagen: <%= evento.getImagen() %>
    </li>
    <%
        }
    %>


</ul>
</body>
</html>
