<%@page import="login.usuario"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Valida usuário</title>
    </head>
    <body>
        <%
            usuario us = new usuario();
            String usuario = request.getParameter("usuario");
            String senha = request.getParameter("senha");
            boolean status = us.verificarUsuario(usuario, senha);

            if (us.result == true) {
        %>
        <%@include file  = "menu.jsp" %>
        <%
            out.println("<h2>Ola, " + usuario + "!</h2>");
        } else {
        %>
        <%@include file  = "usuarioInvalido.jsp" %>
        <%
        }
        %>
    </body>
</html>
