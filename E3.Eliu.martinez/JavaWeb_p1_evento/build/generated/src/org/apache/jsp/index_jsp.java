package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import com.mysql.jdbc.Driver;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"es\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css\" integrity=\"sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Raleway:wght@400;700;900&display=swap\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/app-style.css\">\n");
      out.write("        <title>TechEvent - Home</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");

            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
        
      out.write("\n");
      out.write("\n");
      out.write("        <header class=\"header-1 text-center\">\n");
      out.write("            <h1>TechEvent</h1>\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("        <main class=\"main-grid\">\n");
      out.write("            <div class=\"main-info\">\n");
      out.write("                <h2 class=\"text-center\">Evento de Clases Informaticas</h2>\n");
      out.write("                <p>Entregamos cada detalle que presentará este evento, donde cada concursante tendrá la posibilidad de acceder a una de estos cursos.</p>\n");
      out.write("                <p>Las clases se realizarán en el día asignado por TechEvent, y además, podrás ver cada concursante que se a logrado inscribir.</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <img src=\"assets/img/main.jpg\" alt=\"foto del main\">\n");
      out.write("        </main>\n");
      out.write("\n");
      out.write("        <section class=\"contenedor section-clases\">\n");
      out.write("\n");
      out.write("            <div class=\"text-center cursos-info\">\n");
      out.write("                <h2>Clases de TechEvent</h2>\n");
      out.write("                <p>Comprueba las clases que se llevarán a cabo, y decide por el aprendizaje que deseas cursar</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div>\n");
      out.write("                <table class=\"table table-bordered\">\n");
      out.write("                    <thead class=\"thead-dark\">\n");
      out.write("                        <tr>\n");
      out.write("                            <th scope=\"col\">Id Clase</th>\n");
      out.write("                            <th scope=\"col\">Nombre de Clase</th>\n");
      out.write("                            <th scope=\"col\">Fecha de Inicio</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody>\n");
      out.write("                        ");

                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_p8_evento?user=root");
                            st = con.createStatement();
                            rs = st.executeQuery("SELECT * FROM tbl_clases");

                            while (rs.next()) {
                        
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <th scope=\"row\">");
      out.print(rs.getInt("id_clase"));
      out.write("</th>\n");
      out.write("                            <td>");
      out.print(rs.getString("nombre_clase"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getDate("fecha_inicio"));
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("\n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <section class=\"section-concursantes contenedor\">\n");
      out.write("\n");
      out.write("            <div class=\"descripcion-concursantes\">\n");
      out.write("                <h2 class=\"text-center\">Concursantes de las Clases</h2>\n");
      out.write("                <table class=\"table table-bordered\">\n");
      out.write("                    <thead class=\"thead-light\">\n");
      out.write("                        <tr>\n");
      out.write("                            <th scope=\"col\">Id Concursante</th>\n");
      out.write("                            <th scope=\"col\">Nombre Concursante</th>\n");
      out.write("                            <th scope=\"col\">Teléfono de Consursante</th>\n");
      out.write("                            <th scope=\"col\">Fecha de Nacimiento</th>\n");
      out.write("                            <th scope=\"col\">Id Clase a Participar</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody>\n");
      out.write("                        ");

                            rs = st.executeQuery("SELECT * FROM tbl_concursantes");

                            while (rs.next()) {
                        
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <th scope=\"row\">");
      out.print(rs.getInt("id_concursante"));
      out.write("</th>\n");
      out.write("                            <td>");
      out.print(rs.getString("nombre_concursante"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getInt("fono_concursante"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getDate("fecha_nacimiento"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getInt("id_clase"));
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("\n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <img src=\"assets/img/section-concursantes.jpg\" alt=\"imagen de participantes\">\n");
      out.write("\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <footer class=\"footer-1 text-center\">\n");
      out.write("            <p>Todos los dererechos reservados, TechEvent</p>\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
