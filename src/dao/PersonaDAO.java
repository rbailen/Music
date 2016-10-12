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
import model.Persona;

public class PersonaDAO {
    
    private static final String SQL_PERSONAS="SELECT * FROM Persona";
    
    private static Persona personaMapper(ResultSet rs) throws SQLException {
        Persona p = null;
        
        try {
            p=new Persona();
            
            p.setId(rs.getInt("idpersona"));
            p.setNombre(rs.getString("nombre"));
        } catch (Exception ex) {
             Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
        }

        return p;
    } 
    
    public List<Persona> listarPersonas() {
        List<Persona> usuarios=new ArrayList<>();
        
        DB db = new DB();
        db.conectar();
        
        try{
            Connection conn = db.getConn();
                
            Statement stmn=conn.createStatement();
            ResultSet rs=stmn.executeQuery(SQL_PERSONAS);

            while (rs.next()) {
                usuarios.add(personaMapper(rs));
            }
        } catch (SQLException ex) {
            Logger.getLogger(PersonaDAO.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
        }
        
        db.desconectar();
        
        return usuarios;
    }
}
