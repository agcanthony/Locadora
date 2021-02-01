package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class verificaUsuario_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Página Inicial</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("            <div class=\"\" style=\"background-color: gold\">\n");
      out.write("                <div class=\"text-center row mb-4\">\n");
      out.write("                    <div class=\"col\">\n");
      out.write("                        <div role=\"header\">\n");
      out.write("                            <h1 style=\"color: #006aff;\">Contato</h1> \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-10\" style=\"background-color: #eb3f1c\">\n");
      out.write("                        <div class=\"news\">\n");
      out.write("                            <img src=\"img1.png\" class=\"img-fluid\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-2\" style=\"background-color: #eb3f1c\">\n");
      out.write("                        <div class=\"news\">\n");
      out.write("                            <form action=\"validaUsuario.jsp\" method=\"post\">\n");
      out.write("                                <div class=\"col-sm-12 mt-2\">\n");
      out.write("                                    <label for=\"exampleInputEmail1\"><font style=\"color: white\">Usuário: </font><font style=\"color: red\">*</font></label>\n");
      out.write("                                    <input type=\"text\" name=\"usuario\" class=\"form-control\" placeholder=\"Nome\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-sm-12\">\n");
      out.write("                                    <label for=\"exampleInputEmail1\"><font style=\"color: white\">Senha: </font> <font style=\"color: red\">*</font></label>\n");
      out.write("                                    <input type=\"password\" name=\"senha\" class=\"form-control\" placeholder=\"Senha\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-sm-12 text-center mt-2 mb-2\">\n");
      out.write("                                    <button type=\"submit\" name=\"btLogin\" class=\"btn btn-primary mb-3\">Login</button>\n");
      out.write("                                    <br>\n");
      out.write("                                    <font style=\"color: white\"><a href=\"index.jsp\">Não tem conta? cadastre-se</a></font>\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("            <div class=\"\" style=\"background-color: white\">\n");
      out.write("                <div class=\"text-center row mb-4\">\n");
      out.write("                    <div class=\"col\">\n");
      out.write("                        <div role=\"header\">\n");
      out.write("                            <h1 style=\"color: #006aff;\">Contato</h1> \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-4\" style=\"background-color:\">\n");
      out.write("                        <div class=\"news text-center\">\n");
      out.write("                            <img src=\"img3.jpg\" class=\"img-fluid\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-4\" style=\"background-color: \">\n");
      out.write("                        <div class=\"news text-center\">\n");
      out.write("                            <img src=\"img2.jpg\" class=\"img-fluid\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-4\" style=\"background-color: \">\n");
      out.write("                        <div class=\"news text-center\">\n");
      out.write("                            <img src=\"img3.jpg\" class=\"img-fluid\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
