package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import login.usuario;

public final class validaUsuario_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/menu.jsp");
    _jspx_dependants.add("/usuarioInvalido.jsp");
  }

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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Valida usuário</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            usuario us = new usuario();
            String usuario = request.getParameter("usuario");
            String senha = request.getParameter("senha");
            boolean status = us.verificarUsuario(usuario, senha);

            if (us.result == true) {
        
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Página de acesso</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>MENU </h1>\n");
      out.write("\n");
      out.write("        <section class=\"img-um-site p filtro\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-6\">\n");
      out.write("                    <div class=\"news\">\n");
      out.write("                        <div class=\"row ml-1 mr-1\" style=\"background-color: rgba(255,255,255,.3); border-radius: 15px; border: 2px solid rgba(255,255,255,.7);\">\n");
      out.write("                            <h1 class=\"text-center\" style=\"font-size: 40px; width: 100%; color: white;\">Ainda não é nosso cliente?</h1>\n");
      out.write("                            <h1 class=\"lead text-center\" style=\"font-size: 30px; width: 100%; color: white;\">Seja um cliente e ganhe descontos.</h1>\n");
      out.write("                            <p class=\"text-center\" style=\" width: 100%;\">\n");
      out.write("                                <button type=\"button\" class=\"btn btn-outline-light btn-lg\"><a href=\"listaClientes.jsp\"><h1>Clientes</h1></a></button>\n");
      out.write("                            </p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-6\">\n");
      out.write("                    <div class=\"news\">\n");
      out.write("                        <div class=\"row ml-1 mr-1\" style=\"background-color: rgba(255,255,255,.3); border-radius: 15px; border: 2px solid rgba(255,255,255,.7);\">\n");
      out.write("                            <h1 class=\"text-center\" style=\"font-size: 40px; width: 100%; color: white;\">Conheça nossos automoveis</h1>\n");
      out.write("                            <h1 class=\"lead text-center\" style=\"font-size: 30px; width: 100%; color: white;\">Os melhores carros pelo melhor preço.</h1>\n");
      out.write("                            <p class=\"text-center\" style=\" width: 100%;\">\n");
      out.write("                                <button type=\"button\" class=\"btn btn-outline-light btn-lg\"><a href=\"sugestao.html\"><h1>Carros</h1></a></button>\n");
      out.write("                            </p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        ");

            out.println("<h2>Ola, " + usuario + "!</h2>");
        } else {
        
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Validação de Usuário</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1><font color=\"red\">Dados inválidos!</font></h1>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        ");

        }
        
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
