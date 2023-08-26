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
        <title>Random Games - Delete</title>
    </head>
    <body>

        <%
            String userID = request.getParameter("id_usuario");
            String userName = request.getParameter("nombre_usuario");
        %>

        <header class="titulo-random">
            <h1 class="text-center">Random Games</h1>
        </header>

        <main class="main-delete">

            <h2 class="text-center">Eliminación de Usuario</h2>
            
            <div class="apartado-delete container">
                
                <div>
                    <img src="assets/img/7.jpg" alt="teclado gamer"/>
                </div>
                
                <div class="info-delete flex-align-center flex-column">
                    <h3 class="text-center">Confirmación</h3>
                    <p>Está seguro que desea elimiar el usuario <span><%=userName%></span>, una vez eliminado, no podrá realizar la elección al juego random y tampoco podrá recuperar sus datos.</p>
                    
                    <form action="delete.jsp" method="POST">
                        <div>
                            <input type="hidden" name="eliminar" value="eliminar">
                            <input type="hidden" name="id-user" value="<%=userID%>">
                        </div>
                        <div class="enlace-delete">
                            <button type="submit" class="btn-3 no-border">Eliminar Usuario</button>
                            <a href="index.jsp" class="btn-4">Volver a Home</a>
                        </div>
                    </form>
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
                        
                        if(request.getParameter("eliminar") != null){
                            
                            String id = request.getParameter("id-user");
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_p9_games?user=root");
                            Statement st = con.createStatement();
                            
                            st.executeUpdate("DELETE FROM tbl_usuarios WHERE id_usuario='"+id+"';");
                            request.getRequestDispatcher("index.jsp").forward(request, response);
                            
                        }
                    %>

    </body>
</html>
