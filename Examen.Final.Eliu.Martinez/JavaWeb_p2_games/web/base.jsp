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
        <title>Random Games - Base</title>
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

        <main class="base">

            <h2>HOLA</h2>

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

    </body>
</html>
