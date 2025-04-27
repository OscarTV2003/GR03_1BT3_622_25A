<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="eventoContent">
    <div class="eventos-Container">
        <h2>Eventos Comunitarios Agendados</h2>
    </div>
</c:set>

<jsp:include page="base.jsp">
    <jsp:param name="title" value="Eventos Comunitarios"/>
    <jsp:param name="contentPage" value="${eventoContent}"/>
    <jsp:param name="modo" value="admin"/>
</jsp:include>