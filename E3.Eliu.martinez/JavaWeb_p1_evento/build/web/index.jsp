<%-- 
    Document   : index
    Created on : 16-08-2023, 12:42:04
    Author     : Eliulson
--%>

<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Raleway:wght@400;700;900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/app-style.css">
        <title>TechEvent - Home</title>
    </head>
    <body>

        <%
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
        %>

        <header class="header-1 text-center">
            <h1>TechEvent</h1>
        </header>

        <main class="main-grid">
            <div class="main-info">
                <h2 class="text-center">Evento de Clases Informaticas</h2>
                <p>Entregamos cada detalle que presentará este evento, donde cada concursante tendrá la posibilidad de acceder a una de estos cursos.</p>
                <p>Las clases se realizarán en el día asignado por TechEvent, y además, podrás ver cada concursante que se a logrado inscribir.</p>
            </div>

            <img src="assets/img/main.jpg" alt="foto del main">
        </main>

        <section class="contenedor section-clases">

            <div class="text-center cursos-info">
                <h2>Clases de TechEvent</h2>
                <p>Comprueba las clases que se llevarán a cabo, y decide por el aprendizaje que deseas cursar</p>
            </div>

            <div>
                <table class="table table-bordered">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Id Clase</th>
                            <th scope="col">Nombre de Clase</th>
                            <th scope="col">Fecha de Inicio</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_p8_evento?user=root");
                            st = con.createStatement();
                            rs = st.executeQuery("SELECT * FROM tbl_clases");

                            while (rs.next()) {
                        %>
                        <tr>
                            <th scope="row"><%=rs.getInt("id_clase")%></th>
                            <td><%=rs.getString("nombre_clase")%></td>
                            <td><%=rs.getDate("fecha_inicio")%></td>
                        </tr>
                        <%}%>

                    </tbody>
                </table>
            </div>
        </section>

        <section class="section-concursantes contenedor">

            <div class="descripcion-concursantes">
                <h2 class="text-center">Concursantes de las Clases</h2>
                <table class="table table-bordered">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">Id Concursante</th>
                            <th scope="col">Nombre Concursante</th>
                            <th scope="col">Teléfono de Consursante</th>
                            <th scope="col">Fecha de Nacimiento</th>
                            <th scope="col">Id Clase a Participar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            rs = st.executeQuery("SELECT * FROM tbl_concursantes");

                            while (rs.next()) {
                        %>
                        <tr>
                            <th scope="row"><%=rs.getInt("id_concursante")%></th>
                            <td><%=rs.getString("nombre_concursante")%></td>
                            <td><%=rs.getInt("fono_concursante")%></td>
                            <td><%=rs.getDate("fecha_nacimiento")%></td>
                            <td><%=rs.getInt("id_clase")%></td>
                        </tr>
                        <%}%>

                    </tbody>
                </table>
            </div>

            <img src="assets/img/section-concursantes.jpg" alt="imagen de participantes">

        </section>

        <footer class="footer-1 text-center">
            <p>Todos los dererechos reservados, TechEvent</p>
        </footer>

    </body>
</html>
