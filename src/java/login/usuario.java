package login;

import java.sql.*;

public class usuario {

    public Connection conectarBD() {
        Connection conn = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");//.newInstance();
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/locadora", "root", "");

        } catch (Exception e) {

        }
        return conn;
    }
    
    public String usuario="";
    public boolean result = false;
    public boolean verificarUsuario(String usuario,String senha){
        String sql="";
        Connection conn = conectarBD();
        sql+= "SELECT usuario FROM tbusuario WHERE usuario = "+"'"+usuario+"'";
        sql += "AND senha ="+"'"+senha+"';";
        
        try{
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            if (rs.next()) {
                result = true;
                usuario = rs.getString("usuario");
            }
        } catch (Exception e) {

        }
        return result;
    }

}
