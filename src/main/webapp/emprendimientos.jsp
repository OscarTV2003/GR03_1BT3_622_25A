<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="empreContent">
    <div class="emprendimiento-Container">
        <h2>Emprendimientos Barriales </h2>
    </div>
</c:set>

<jsp:include page="base.jsp">
    <jsp:param name="title" value="Emprendimientos Barriales"/>
    <jsp:param name="contentPage" value="${empreContent}"/>
    <jsp:param name="modo" value="admin"/>
</jsp:include>