<%-- 
    Document   : index
    Created on : 24-08-2023, 13:01:32
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
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&family=Raleway:wght@400;700;900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/app.css">
        <script src="https://kit.fontawesome.com/0c418a5786.js" crossorigin="anonymous"></script>
        <title>Random Games - Update</title>
    </head>
    <body>

        <%

            String idUser = request.getParameter("id_usuario");
            String nombreUser = request.getParameter("nombre_usuario");
            String edadUser = request.getParameter("edad_usuario");
            String idJuego = request.getParameter("id_juego");
        %>

        <header class="titulo-random">
            <h1 class="text-center">Random Games</h1>
        </header>

        <main class="main-update">

            <h2 class="text-center">Actualización de Usuario</h2>

            <div class="apartado-update contenedor">

                <div class="info-update">

                    <div class="info-update-user">
                        <table class="table table-dark text-center">
                            <thead>
                                <tr>
                                    <th scope="col" colspan="3">Usuario a Modificar</th>
                                </tr>
                                <tr>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Edad</th>
                                    <th scope="col">Id de Juego Seleccionado</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><%=nombreUser%></td>
                                    <td><%=edadUser%></td>
                                    <td><%=idJuego%></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="info-update-user">
                        <h3 class="text-center">Nuevos Datos de Usuario</h3>
                        <form action="update.jsp" method="POST">
                            <div class="form-group">
                                <label for="name-user">Nombre de Usuario:</label>
                                <input name="name-user" type="text" class="form-control" id="name-user" aria-describedby="nombreHelp" maxlength="30" required>
                            </div>

                            <div class="form-group">
                                <label for="pass-user">Password Usuario: </label>
                                <input name="pass-user" type="password" class="form-control" id="pass-user" aria-describedby="passHelp" maxlength="30" required>
                            </div>

                            <div class="form-group">
                                <label for="edad-user">Edad Usuario: </label>
                                <input name="edad-user" type="number" class="form-control" id="edad-user" aria-describedby="edadHelp" required>
                            </div>

                            <div class="form-group">
                                <label for="select-game">Seleccione el Juego:</label>
                                <select name="select-game" class="form-select" id="select-game" aria-label="select-game">
                                    <option selected disabled value="nada">-- Seleccione una Opción --</option>
                                    <%

                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_p9_games?user=root");
                                        Statement st = con.createStatement();
                                        ResultSet rs = st.executeQuery("SELECT nombre_juego FROM tbl_juegos");

                                        while (rs.next()) {
                                    %>
                                    <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
                                    <% }%>
                                </select>
                            </div>

                            <div>
                                <input type="hidden" name="id-usuario" value="<%=idUser%>">        
                            </div>

                            <div class="enlace-formulario">
                                <button type="submit" class="btn-2">Confirmar</button>
                                <a href="index.jsp" class="btn-3">Cancelar</a>
                            </div>
                        </form>
                    </div>

                </div>

                <div class="image">
                    <img src="assets/img/9.jpg" alt="astronauta en habitación gamer"/>
                </div>
            </div>

        </main>

        <footer class="footer-random">

            <div class="info-footer">
                <h2>Hace la elección de tu juego en - Random Games</h2>

                <div class="redes-sociales">
                    <a href="#"><i class="fab fa-github"></i></a>
                    <a href="#"><i class="fab fa-youtube"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                </div>
            </div>

        </footer>

        <%
            String userID = request.getParameter("id-usuario");
            
            if (userID != null) {

                String strNombre = request.getParameter("name-user");
                String strPass = request.getParameter("pass-user");
                String strEdad = request.getParameter("edad-user");
                String strJuego = request.getParameter("select-game").toLowerCase();

                 //Comprobación de juego

                if (strJuego == "call of duty") {
                    idJuego = "1";
                } else if (strJuego == "kingdoms") {
                    idJuego = "2";
                } else if (strJuego == "the lost world") {
                    idJuego = "3";
                } else {
                    idJuego = "4";
                }

                try {
                    st.executeUpdate("UPDATE tbl_usuarios SET nombre_usuario = '"+strNombre+"', password_usuario = '"+strPass+"', edad_usuario = '"+strEdad+"', id_juego = '"+idJuego+"' WHERE id_usuario = '"+userID+"';");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                } catch (Exception e) {
                    out.print(e);
                }
            }
        %>

    </body>
</html>
