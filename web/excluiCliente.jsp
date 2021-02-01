<%@page language="java" 
        contentType="text/html" 
        pageEncoding="UTF-8"  
        import="java.sql.*,java.text.*,java.util.*,java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String ID = request.getParameter("id").trim();
            String NOME = request.getParameter("nome");

            if (ID != null) {

                Connection conn = null;
                Statement st = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/locadora", "root", "");

                    st = conn.createStatement();

                    st.executeUpdate("DELETE FROM tbcliente WHERE id='" + ID + "'");

                    out.println("Cliente: <strong>" + ID + "</strong> foi Excluido");
                    out.println("<br><a href='listaClientes.jsp'><input type='submit' value='Voltar' /></a>");

                } catch (Exception ex) {

                    out.println("Nao foi possível excluir o Cliente");
                    ex.printStackTrace();
                    
                } finally {

                    if (st != null) {
                        st.close();
                    }
                    if (conn != null) {
                        conn.close();
                    }
                }
            }

        %>
    </body>
</html>
