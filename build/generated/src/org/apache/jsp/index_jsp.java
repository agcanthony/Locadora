package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Cadastro de Usuários </title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1 class=\"text-center\">Cadastro de Usuários</h1>\n");
      out.write("\n");
      out.write("        <div class=\"col-12 text-center\" style=\"background-color: \">\n");
      out.write("            <div class=\"news\">\n");
      out.write("                <form action=\"cadastraUsuario.jsp\" method=\"post\">\n");
      out.write("                    <div class=\"col-sm-12 mt-2\">\n");
      out.write("                        <label for=\"exampleInputEmail1\"><font style=\"color: black\">Usuário: </font><font style=\"color: red\">*</font></label>\n");
      out.write("                        <input type=\"text\" name=\"usuario\" class=\"form-control\" placeholder=\"Nome\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-12\">\n");
      out.write("                        <label for=\"exampleInputEmail1\"><font style=\"color: black\">Senha: </font> <font style=\"color: red\">*</font></label>\n");
      out.write("                        <input type=\"password\" name=\"senha\" class=\"form-control\" placeholder=\"Senha\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-12 text-center mt-2 mb-2\">\n");
      out.write("                        <button type=\"submit\" name=\"btCadastro\" class=\"btn btn-primary mb-3\">Incluir Usuário</button>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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
