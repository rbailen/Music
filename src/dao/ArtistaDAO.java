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
import model.Artista;
import model.Grupo;
import model.Persona;

public class ArtistaDAO {
    
    private static final String SQL_ARTISTAS="SELECT a.idartista, a.papel, p.idpersona, p.nombre AS nombrePersona, g.idgrupo, g.nombre AS nombreGrupo " + 
                                             "FROM Artista a " + 
                                             "INNER JOIN Persona p ON a.idpersona = p.idpersona " + 
                                             "LEFT JOIN Grupo g ON a.idgrupo = g.idgrupo " + 
                                             "ORDER BY a.idartista ASC";
    
    private static Artista artistaMapper(ResultSet rs) throws SQLException {
        Artista a = null;
        
        try {
            a = new Artista();
            
            a.setId(rs.getInt("idartista"));
            a.setPapel(rs.getString("papel"));
            
            /* Relaciones */
            Persona p = new Persona();
            p.setNombre(rs.getString("nombrePersona"));
            
            a.setPersona(p);
            
            Grupo g = new Grupo();
            g.setNombre(rs.getString("nombreGrupo"));
            
            a.setGrupo(g);
        } catch (Exception ex) {
             Logger.getLogger(ArtistaDAO.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
        }

        return a;
    } 
    
    public List<Artista> listarArtistas() {
        List<Artista> artistas=new ArrayList<>();
        
        DB db = new DB();
        db.conectar();
        
        try{
            Connection conn = db.getConn();
                
            Statement stmn=conn.createStatement();
            ResultSet rs=stmn.executeQuery(SQL_ARTISTAS);

            while (rs.next()) {
                artistas.add(artistaMapper(rs));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ArtistaDAO.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
        }
        
        db.desconectar();
        
        return artistas;
    }
}
