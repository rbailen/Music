package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB {
   
    private Connection conn;
    
    public void conectar(){
        conn = null;
        
        String bd = "music";
        String usuario = "root";
        String password = "mysql";
        String url = "jdbc:mysql://localhost/" + bd;
        
        try{
            /* Driver para MySQL */
            Class.forName("com.mysql.jdbc.Driver");
            
            /* Obtenemos la conexión */
            conn = DriverManager.getConnection(url, usuario, password);
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public void desconectar(){
        conn = null;
    }

    /**
     * @return the conn
     */
    public Connection getConn() {
        return conn;
    }
}
