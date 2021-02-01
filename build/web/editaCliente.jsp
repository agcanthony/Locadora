<%@page language="java" 
        contentType="text/html" 
        pageEncoding="UTF-8"  
        import="java.sql.*,java.text.*,java.util.*,java.text.SimpleDateFormat"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/html1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Emprestimo de livros</title>
    </head>
    <body>
        <%
            String ID = request.getParameter("id").trim();

            if (ID != null) {

                Connection conn = null;
                PreparedStatement pst = null;
                ResultSet rs = null;

                Statement st = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/locadora", "root", "");

                    st = conn.createStatement();

                    pst = conn.prepareStatement("select * from tbcliente where id=?");
                    pst.setString(1, ID);
                    rs = pst.executeQuery();
                    pst.clearParameters();

                    if (rs.next()) {


        %>
        <form action="atualizaCliente.jsp" method="post"><!---->
            <table>
                <tr>
                    <td>ID...</td>
                    <td><input type="text" name="id" value="<%=rs.getString("id")%>" readonly="readonly"/></td>

                </tr>
                <tr>
                    <td>Nome...</td>
                    <td><input type="text" name="nome" value="<%=rs.getString("nome")%>" /></td>

                </tr>
                <tr>
                    <td>Data de Nascimento...</td>
                    <td><input type="text" name="datanasc" value="<%=rs.getString("datanasc")%>" /></td>

                </tr>
                <tr>
                    <td>Telefone...</td>
                    <td><input type="text" name="telefone" value="<%=rs.getString("telefone")%>" /></td>

                </tr>
                <tr>
                    <td>Endereço...</td>
                    <td><input type="text" name="endereco" value="<%=rs.getString("endereco")%>"/></td>
                </tr>
                <tr>
                    <td>Categoria de habilitação...</td>
                    <td><input type="text" name="carteira" value="<%=rs.getString("carteira")%>"/></td>
                </tr>
                <tr>
                    <td><input type="submit" name="btAtualiza" value="Atualizar" /></td>
                </tr>
            </table>
        </form>
                    <a href="listaClientes.jsp"><input type="submit" value="Voltar" /></a>

        <%
                    } else {

                        out.println("Cliente nao encontrado");

                    }
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
            }

        %>
    </body>
</html>
