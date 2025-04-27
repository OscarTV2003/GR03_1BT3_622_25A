<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="securityContent">
  <div class="seguridad-container">
    <h2>Seguridad Comunitaria</h2>
  </div>
</c:set>

<%-- Incluimos la base.jsp pasando el contenido --%>
<jsp:include page="base.jsp">
  <jsp:param name="title" value="Seguridad Comunitaria"/>
  <jsp:param name="contentPage" value="${securityContent}"/>
  <jsp:param name="modo" value="admin"/>
</jsp:include>