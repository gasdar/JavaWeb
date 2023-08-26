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
        <title>Random Games - Home</title>
    </head>
    <body>

        <%
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
        %>

        <header class="titulo-random">
            <h1 class="text-center">Random Games</h1>
        </header>

        <main class="main-contexto">

            <div class="contenedor">

                <section class="contexto-s1">
                    <div>
                        <div class="info-contexto">
                            <h2 class="text-center">Semana de Juegos Liberados</h2>
                            <p>Próximamente se liberarán 4 tipos de juegos distintos, solo los usuarios que esten inscritos podrán acceder a uno de ellos, una vez liberados podrás descargar el que elijas y disfrutar de su experiencia.</p>
                            <p>Desde juegos de suspensos hasta juegos aventura y estrategia, recuerda estar al tanto, para saber cual será la fecha de liberación, para elegir tu juego.</p>
                        </div>
                    </div>

                    <div class="image">
                        <img src="assets/img/10.jpg" alt="imagen principal de habitación gamer" />
                    </div>
                </section>

                <section class="contexto-s2">
                    <div class="image image-users">
                        <img src="assets/img/6.jpg" alt="comunidad gamer" />
                    </div>


                    <div>
                        <div class="info-contexto">
                            <h2 class="text-center">Recordatorio Importante</h2>
                            <p>Te dejaremos una lista de los juegos que se estarán liberando, para que hagas tu elección de antemano y puedas familiarizarte desde antes.</p>
                            <p>Recuerda que, solo los inscritos podrán optar por un juego, si aun no lo estás, dirigete al apartado de <a href="#inscribir">"Usuarios Inscritos"</a>.</p>
                        </div>
                    </div>


                    <div class="image">
                        <img src="assets/img/12.jpg" alt="escritorios de gamers" />
                    </div>
                </section>

            </div>

        </main>

        <section class="section-games">
            <h2 class="text-center">Juegos Random a Liberar</h2>

            <div class="contenedor info-games">
                <div class="flex-align-center">
                    <table class="table table-dark">
                        <thead>
                            <tr>
                                <th scope="col">Id de Juego</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Descripción</th>
                                <th scope="col">Dificultad</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_p9_games?user=root");
                                st = con.createStatement();
                                rs = st.executeQuery("SELECT * FROM tbl_juegos");

                                while (rs.next()) {
                            %>
                            <tr>
                                <td><%=rs.getString(1)%></td>
                                <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(3)%></td>
                                <td><%=rs.getString(4)%></td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>

                <div class="image">
                    <img src="assets/img/3.jpg" alt="gamers elegiendo juegos" />
                </div>
            </div>

        </section>

        <section class="section-user">

            <h2 class="text-center">Inscripciones</h2>

            <div class="info-user contenedor">

                <div class="image">
                    <img src="assets/img/5.jpg" alt="imagen de usuarios"/>
                </div>

                <div class="flex-align-center">
                    <table class="table table-dark" id="inscribir">
                        <thead>
                            <tr>
                                <th scope="col" colspan="3" class="text-center">Usuarios</th>
                                <th>
                                    <a href="create.jsp" class="btn-1"><i class="fa fa-user-plus"></i></a>
                                </th>
                            </tr>
                            <tr>
                                <th scope="col">Nombre</th>
                                <th scope="col">Edad</th>
                                <th scope="col">Id de Juego Elegido</th>
                                <th scope="col">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                rs = st.executeQuery("SELECT * FROM tbl_usuarios");

                                while (rs.next()) {
                            %>
                            <tr>
                                <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(4)%></td>
                                <td><%=rs.getString(5)%></td>
                                <td class="user-accion">
                                    <a href="update.jsp?id_usuario=<%=rs.getString(1)%>&nombre_usuario=<%=rs.getString(2)%>&edad_usuario=<%=rs.getString(4)%>&id_juego=<%=rs.getString(5)%>" class="btn-2"><i class="fa fa-pen-alt"></i></a>
                                    <a href="delete.jsp?id_usuario=<%=rs.getString(1)%>&nombre_usuario=<%=rs.getString(2)%>" class="btn-3"><i class="fa fa-trash-alt"></i></a>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>

        </section>

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

    </body>
</html>
