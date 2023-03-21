<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="images/lavanderia-icono.png" type="image/x-icon">
  <title>Laundry</title>

  <!-- Iconos -->
  <script src="https://kit.fontawesome.com/a3c0bc2905.js" crossorigin="anonymous"></script>

  <link rel="stylesheet" href="css/style.css">
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
</head>
<body>

<header>
  <nav class="#006064 cyan darken-4">
    <div class="nav-wrapper">
      <a href="./" class="brand-logo" style="display: flex; align-items: center; margin-left: 15px"><img src="images/lavanderia-icono.png" alt="Logo" width="40"><span style="margin-left: 10px">Laundry App</span></a>

      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a href="#">Horarios</a></li>
        <li><a href="#">Citas</a></li>
        <li><a href="#">Acerca de</a></li>
      </ul>
    </div>
  </nav>
</header>

<main>
  <div class="container-home">
    <div class="imagen-home">
      <img src="imagesa/lavanderia-home.jpg" alt="Imagen Lavandería" class="imagen-home-img">
    </div>

    <div class="form-home">
      <div class="form-container">
        <h4 class="titulo-form-home center">DATOS DEL CLIENTE: </h4><br>
        <div class="row container-inputs">
          <form class="col s12">

            <div class="row">
              <div class="input-field col s6">
                <input name="nombre" id="nombre" type="text" class="validate">
                <label for="nombre">Nombre</label>
              </div>
              <div class="input-field col s6">
                <input id="apellido" type="text" name="apellido" class="validate">
                <label for="apellido">Apellido</label>
              </div>
            </div>

            <div class="row">
              <div class="input-field col s12">
                <input placeholder="Domicilio (calle, número, apartamento y piso)" name="domicilio" id="domicilio" type="text" class="validate">
                <label for="domicilio">Domicilio</label>
              </div>

              <div class="input-field col s12">
                <input placeholder="Teléfono" id="telefono" name="telefono" type="number" class="validate">
                <label for="telefono">Número de teléfono</label>
              </div>

            </div>

            <div class="button-container-home">

              <a href="orders.jsp" class="waves-effect waves-light btn #43a047 green darken-1"><i class="fas fa-check-circle"></i> Registrar Cliente</a>
              <br>
              <a href="./" class="waves-effect waves-light btn #283593 indigo darken-3"><i class="fas fa-chevron-circle-left"></i> Consultar Clientes</a>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</main>

<footer class="page-footer #006064 cyan darken-4">
  <div class="container">
    <div class="row">
      <div class="col l6 s12">
        <h5 class="white-text">Laundry</h5>
        <p class="grey-text text-lighten-4">Laundry App es una aplicación web de control y gestión de los servicios de lavandería.</p>
      </div>
      <div class="col l4 offset-l2 s12">
        <h5 class="white-text">Redes Sociales</h5>
        <ul>
          <li><a class="grey-text text-lighten-3" href="#!">Facebook @laundry</a></li>
          <li><a class="grey-text text-lighten-3" href="#!">Instagram @laundry</a></li>
          <li><a class="grey-text text-lighten-3" href="#!">Tiktok @laundry</a></li>
          <li><a class="grey-text text-lighten-3" href="#!">WhatsApp +502 2039-7865</a></li>
        </ul>
      </div>
    </div>
  </div>
  <div class="footer-copyright">
    <div class="container">
      © 2023 Copyright
      <a class="grey-text text-lighten-4 right" href="#!">Más enlaces</a>
    </div>
  </div>
</footer>

<!-- Compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>