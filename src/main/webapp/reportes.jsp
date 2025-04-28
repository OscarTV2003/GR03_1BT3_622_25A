<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set  var="problemasContent">
    <div class="problemas-Container">
        <h2>Problemas y Reportes Barriales</h2>
    </div>
</c:set>

<jsp:include page="base.jsp">
    <jsp:param name="title" value="Problemas Barriales"/>
    <jsp:param name="contentPage" value="${problemasContent}"/>
    <jsp:param name="modo" value="admin"/>
</jsp:include>