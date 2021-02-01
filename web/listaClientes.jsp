<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Clientes</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="container">
            <table border="1" class="align-content-center text-center">

            <thead class="m-5">
                <tr>
                    <th>ID</th><th>Nome</th><th>Nascimento</th>
                    <th>Telefone</th><th>Endereço</th><th>Carteira</th>
                    <th>Exclusão</th><th>Edição</th>
                </tr>
            </thead>
            
            <%
                Connection conn = null;
                Statement st = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/locadora", "root", "");
                    st = conn.createStatement();
                    rs = st.executeQuery("select id, nome, datanasc, telefone, endereco, carteira from tbcliente");

                    SimpleDateFormat DataNas = new SimpleDateFormat("dd/MMM/yyyy");

                    while (rs.next()) {
                        String Id = rs.getString("id");
                        String Nome = rs.getString("nome");
                        String Datanasc = rs.getString("datanasc");
                        String Telefone = rs.getString("telefone");
                        String Endereco = rs.getString("endereco");
                        String Carteira = rs.getString("carteira");

                        out.println("<tr>");
                        out.println("<td>" + Id + "</td><td>" + Nome + "</td>");
                        out.println("<td>" + Datanasc + "</td><td>" + Telefone + "</td><td>" + Endereco + "</td><td>" + Carteira + "</td>");
                        out.println("<td><a href='excluiCliente.jsp?id=" + Id + "'>Apagar</a></td>");
                        out.println("<td><a href='editaCliente.jsp?id=" + Id + "'>Editar</a></td>");
                        out.println("</tr>");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                } finally {
                    if (rs != null) {
                        rs.close();
                    }
                    if (st != null) {
                        st.close();
                    }
                    if (conn != null) {
                        conn.close();
                    }
                }
            %>

        </table>
            <br>
            <a href="cadastroCliente.jsp" class="mr-5"><input type="submit" value="Cadastrar cliente" /></a>
            <a href="menu.jsp"><input type="submit" value="Voltar ao menu" /></a>
        </div>
    </body>
</html>