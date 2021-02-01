<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"
        import="java.sql.*"
%>
<%
    String usuario = request.getParameter("usuario");
    String senha = request.getParameter("senha");
    
    Connection conn = null;
    PreparedStatement pst = null;

    try {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/locadora", "root", "");
        String SQL = "INSERT INTO tbusuario(usuario,senha)" + 
                "values(?,?)";
        pst = conn.prepareStatement(SQL);

        pst.setString(1, usuario);
        pst.setString(2, senha);

        pst.executeUpdate();
        pst.clearParameters();
    } catch (Exception ex) {
        ex.printStackTrace();
    } finally {

        if (pst != null) {
            pst.close();
        }
        if (conn != null) {
            conn.close();
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuário cadastrado</title>
    </head>
    <body>
        <h1>Usuário: <%=usuario%> cadastrado.</h1>
        <br>
        <a href="menu.jsp">voltar ao menu</a>
    </body>
</html>
