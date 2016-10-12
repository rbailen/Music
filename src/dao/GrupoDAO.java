package dao;

import db.DB;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Grupo;

public class GrupoDAO {
    private static final String SQL_GRUPOS="SELECT * FROM Grupo";
    
    private static Grupo personaMapper(ResultSet rs) throws SQLException {
        Grupo g = null;
        
        try {
            g=new Grupo();
            
            g.setId(rs.getInt("idgrupo"));
            g.setNombre(rs.getString("nombre"));
        } catch (Exception ex) {
             Logger.getLogger(GrupoDAO.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
        }

        return g;
    } 
    
    public List<Grupo> listarGrupos() {
        List<Grupo> grupos=new ArrayList<>();
        
        DB db = new DB();
        db.conectar();
        
        try{
            Connection conn = db.getConn();
                
            Statement stmn=conn.createStatement();
            ResultSet rs=stmn.executeQuery(SQL_GRUPOS);

            while (rs.next()) {
                grupos.add(personaMapper(rs));
            }
        } catch (SQLException ex) {
            Logger.getLogger(GrupoDAO.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
        }
        
        db.desconectar();
        
        return grupos;
    }
}
