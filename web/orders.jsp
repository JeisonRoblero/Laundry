<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="Conexion.*"%>
<%@ page import="java.sql.*"%>
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
  <div class="container">

    <h4 class="titulo-pedidos">Pedidos de Cliente <%=request.getParameter("id_cliente")%></h4>
    <div class="divider"></div>
    <br>
    <!-- 
    <form action="PedidoServlet" method="post"> 
        <input type="hidden" name="id_cliente" value="<%=request.getParameter("id_cliente")%>">
        <button type="submit" class="waves-effect waves-light btn #43a047 green darken-1 right"><i class="fas fa-plus-circle"></i> Nuevo Pedido</button>
    </form>
    -->
    <a href="order-form.jsp" class="waves-effect waves-light btn #43a047 green darken-1 right"><i class="fas fa-plus-circle"></i> Nuevo Pedido</a><br><br><br>
    <div class="card-container-pedidos">
        <%
            Conexion conC = new Conexion();
            Connection con = conC.conectar();
            try {
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT * FROM \"Pedido\" WHERE \"id_cliente\"="+request.getParameter("id_cliente"));
                while(rs.next()){
        %>
                <div class="card-pedido">
                  <h6 class="titulo-id-pedido">Pedido No. <%=rs.getInt(1)%></h6>
                  <p class="fecha-pedido">Fecha de pedido: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;<%=rs.getDate(2)%></p>
                  <p class="fecha-devolucion">Fecha de devolucion: &nbsp;&nbsp;&nbsp;<%=rs.getDate(3)%></p>
                  <p class="costo-total-pedido"><b class="monto-pedido"><%=rs.getFloat(5)%></b></p>
                  <div class="ver-pedido-button-container">
                    <a href="order-detail.jsp" class="ver-pedido-button"><i class="fas fa-eye"></i> Ver Detalles de Pedido</a>
                  </div>
                </div>
        <%
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        %>
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
