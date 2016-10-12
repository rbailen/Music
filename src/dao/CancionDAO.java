package dao;

import db.DB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cancion;
import model.Disco;

public class CancionDAO {
    
    private static final String SQL_BUSCAR_CANCIONES_DISCO="SELECT c.idcancion, c.numero, c.iddisco, c.titulo AS tituloCancion, d.titulo AS tituloDisco " + 
                                             "FROM Cancion c " + 
                                             "INNER JOIN Disco d ON d.iddisco = c.iddisco " +  
                                             "WHERE d.titulo LIKE ? " +
                                             "ORDER BY c.numero ASC";
    
    private static Cancion cancionMapper(ResultSet rs) throws SQLException {
        Cancion c = null;
        
        try {
            c = new Cancion();
            
            c.setId(rs.getInt("idcancion"));
            c.setNumero(rs.getInt("numero"));
            c.setTitulo(rs.getString("tituloCancion"));
            
            /* Relaciones */
            Disco d = new Disco();
            d.setTitulo(rs.getString("tituloDisco"));
            
            c.setDisco(d);
        } catch (Exception ex) {
             Logger.getLogger(CancionDAO.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
        }

        return c;
    } 
    
    public List<Cancion> buscarCancionesDisco(String nombre){
        List<Cancion> canciones = new ArrayList<>();
        
        DB db = new DB();
        db.conectar();
        
        try{
            Connection conn = db.getConn();
            
            PreparedStatement stmn = conn.prepareStatement(SQL_BUSCAR_CANCIONES_DISCO);
            stmn.setString(1, "%" + nombre + "%");
            ResultSet rs = stmn.executeQuery();

            while (rs.next()) {
                canciones.add(cancionMapper(rs));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CancionDAO.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
        }
        
        db.desconectar();
        
        return canciones;
    }
}
