<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>MiBarrioApp</title>
  <link href="css/Cssindex.css" rel="stylesheet">

</head>
<body class="body">
<header class="header">
  <div class="div-header-container">

    <div class="name-app">
      <div ><img class="icon-container" src="images/iconBarrio.png"></div>
      <div class="css-h1"><h1>MiBarrioApp</h1></div>
    </div>
    <div>
      <a href="login.jsp">
      <button class="button">
        <span class="button-content">Iniciar Sesión</span>
      </button>
      </a>
    </div>
  </div>
</header>
<hr>

<div class="main-container">
  <!-- Parte izquierda -->
  <div class="left-section">
    <div class="info-box">
      <div >
        <img class="img-left" src="images/fondoBarrio.png">
      </div>
      <h2 class="main-title">Comunicación y organización barrial con solo un click</h2>
      <p class="description">MiBarrioApp es una plataforma diseñada para fortalecer los lazos comunitarios en tu vecindario.
        Facilita la comunicación entre vecinos, organización de eventos comunitarios,
        resolución de problemas del barrio y mucho más, todo desde la comodidad de una página web.</p>
    </div>
  </div>

  <div class="right-section">

    <div class="register-box">
      <h3 class="subtitle">Registra a tu barrio</h3>
      <p class="register-description">¿Eres líder comunitario o quieres que tu barrio esté en nuestra plataforma?
        Regístralo ahora para comenzar a disfrutar de todos los beneficios.</p>
      <a href="registroBarrio.jsp">
        <button class="button">
          <span class="button-content">Registrar Barrio</span>
        </button>
      </a>
    </div>

    <div class="register-box">
      <h3 class="subtitle">Registro de usuario</h3>
      <p class="register-description">Únete a la comunidad de MiBarrioApp y mantente conectado con lo que sucede
        en tu vecindario. Conoce a tus vecinos y participa en las actividades.</p>

      <a href="registroUsuario.jsp" class="action-button">
        <button class="button">
          <span class="button-content">Registrar Miembro Barrial</span>
        </button>
      </a>
    </div>

  </div>

   <main>

  </main>
</div>
</body>
</html>