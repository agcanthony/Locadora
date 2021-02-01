<%@page language="java" 
        contentType="text/html" 
        pageEncoding="UTF-8"  
        import="java.sql.*,java.text.*,java.util.*,java.text.SimpleDateFormat"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/html1/DTD/xhtml1-transitional.dtd">


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            String Id = request.getParameter("id");
            String Nome = request.getParameter("nome");
            String Datanasc = request.getParameter("datanasc");
            String Telefone = request.getParameter("telefone");
            String Endereco = request.getParameter("endereco");
            String Carteira = request.getParameter("carteira");

            if (Id != null) {
                Connection conn = null;
                PreparedStatement pst = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/locadora", "root", "");

                    String SQL = "UPDATE tbcliente SET nome=?, datanasc=?, telefone=?,"
                            + "endereco=?, carteira=? WHERE id=?";
                    pst = conn.prepareStatement(SQL);

                    pst.setString(1, Nome);
                    pst.setString(2, Datanasc);
                    pst.setString(3, Telefone);
                    pst.setString(4, Endereco);
                    pst.setString(5, Carteira);
                    pst.setString(6, Id);

                    pst.executeUpdate();
                    pst.clearParameters();

                    out.println("Dados do Cliente: " + Nome + " atualizado.");
                    out.println("<br><a href='listaClientes.jsp'><input type='submit' value='VOLTAR' /></a>");
                    
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
            } else {
                out.println("Cliente não encontrado.");
            }
        %>
    </body>
</html>
