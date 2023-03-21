<%@ page import="java.sql.*" %>
<%@ page import="com.proyect.laundryapp.*" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="Conexion.*"%>
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
    <%
        Conexion conC = new Conexion();
        Connection con = conC.conectar();
    %>
    <div class="container">

        <h4 class="titulo-pedidos">Crear Nuevo Pedido</h4>
        <div class="divider"></div>
        <br>

        <div class="order-form-container">

            <div class="row">
                <form class="col s12" action="ProductoServlet" method="post">
                    <div class="row">
                        <div class="input-field col s4">
                            <input placeholder="Cantidad" name="cantidad" id="cantidad" type="number" class="validate">
                            <label for="cantidad">Cantidad</label>
                        </div>
                        <div class="input-field col s4">
                            <select name="tipo-prenda">
                                <option value="" disabled selected>Tipo de Prenda</option>
                                <%
                                    try {
                                        Statement st = con.createStatement();
                                        ResultSet rs = st.executeQuery("SELECT * FROM \"Prenda\"");
                                        while (rs.next()){
                                %>
                                            <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>
                                <%
                                        }
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                %>
                            </select>
                            <label>Tipo de prenda</label>
                        </div>
                        <div class="input-field col s4">
                            <select name="tipo-servicio">
                                <option value="" disabled selected>Tipo de Servicio</option>
                                <%
                                    try {
                                        Statement st1 = con.createStatement();
                                        ResultSet rs1 = st1.executeQuery("SELECT * FROM \"Servicio\"");
                                        while (rs1.next()){
                                %>
                                            <option value="<%=rs1.getInt(1)%>"><%=rs1.getString(2)%></option>
                                <%
                                        }
                                        st1.close();
                                        rs1.close();
                                        con.close();
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                %>
                            </select>
                            <label>Tipo de servicio</label>
                        </div>
                    </div>
                    
                    <div class="button-container-home">
                        <button type="submit" class="waves-effect waves-light btn #1565c0 blue darken-3"><i class="fas fa-plus-circle"></i> Agregar producto</button>
                    </div>
                    <br>
                    <br>
                    <div class="button-container-home">
                        <a href="./" class="waves-effect waves-light btn #43a047 green darken-1"><i class="fas fa-check-circle"></i> Realizar Pedido</a>
                    </div>

                </form>
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

<script>
    document.addEventListener('DOMContentLoaded', function() {
        var elems = document.querySelectorAll('select');
        var instances = M.FormSelect.init(elems);
    });
</script>
</body>
</html>
