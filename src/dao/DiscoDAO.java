package dao;

import db.DB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Artista;
import model.Disco;
import model.Grupo;
import model.Persona;

public class DiscoDAO {
    private static final String SQL_DISCOS="SELECT d.iddisco, d.titulo, d.anio, p.idpersona, p.nombre AS nombrePersona, g.idgrupo, g.nombre AS nombreGrupo " + 
                                             "FROM Disco d " + 
                                             "LEFT JOIN Artista a ON d.idartista = a.idartista " +
                                             "LEFT JOIN Persona p ON a.idpersona = p.idpersona " + 
                                             "LEFT JOIN Grupo g ON d.idgrupo = g.idgrupo " + 
                                             "ORDER BY d.iddisco ASC";
    
    private static final String SQL_BUSCAR_DISCO_POR_ID="SELECT d.iddisco, d.titulo, d.anio, p.idpersona, p.nombre AS nombrePersona, g.idgrupo, g.nombre AS nombreGrupo " + 
                                                        "FROM Disco d " + 
                                                        "LEFT JOIN Artista a ON d.idartista = a.idartista " +
                                                        "LEFT JOIN Persona p ON a.idpersona = p.idpersona " + 
                                                        "LEFT JOIN Grupo g ON d.idgrupo = g.idgrupo " + 
                                                        "WHERE d.iddisco = ?" +
                                                        "ORDER BY d.iddisco ASC";
    
    private static final String SQL_BUSCAR_DISCO_POR_NOMBRE="SELECT d.iddisco, d.titulo, d.anio, p.idpersona, p.nombre AS nombrePersona, g.idgrupo, g.nombre AS nombreGrupo " + 
                                                        "FROM Disco d " + 
                                                        "LEFT JOIN Artista a ON d.idartista = a.idartista " +
                                                        "LEFT JOIN Persona p ON a.idpersona = p.idpersona " + 
                                                        "LEFT JOIN Grupo g ON d.idgrupo = g.idgrupo " + 
                                                        "WHERE d.titulo LIKE ?" +
                                                        "ORDER BY d.iddisco ASC";
    
    private static Disco discoMapper(ResultSet rs) throws SQLException {
        Disco d = null;
        
        try {
            d = new Disco();
            
            d.setId(rs.getInt("iddisco"));
            d.setTitulo(rs.getString("titulo"));
            d.setAnio(rs.getInt("anio"));
            
            /* Relaciones */
            Artista a = new Artista();
            
            Persona p = new Persona();
            p.setNombre(rs.getString("nombrePersona"));
            
            a.setPersona(p);
            d.setArtista(a);
            
            Grupo g = new Grupo();
            g.setNombre(rs.getString("nombreGrupo"));
            
            d.setGrupo(g);
            
        } catch (Exception ex) {
             Logger.getLogger(DiscoDAO.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
        }

        return d;
    } 
    
    public List<Disco> listarDiscos() {
        List<Disco> discos=new ArrayList<>();
        
        DB db = new DB();
        db.conectar();
        
        try{
            Connection conn = db.getConn();
                
            Statement stmn=conn.createStatement();
            ResultSet rs=stmn.executeQuery(SQL_DISCOS);

            while (rs.next()) {
                discos.add(discoMapper(rs));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DiscoDAO.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
        }
        
        db.desconectar();
        
        return discos;
    }
    
    public Disco buscarDiscoPorId(int id){
        Disco d = new Disco();
        
        DB db = new DB();
        db.conectar();
        
        try{
            Connection conn = db.getConn();
            
            PreparedStatement stmn = conn.prepareStatement(SQL_BUSCAR_DISCO_POR_ID);
            stmn.setString(1, Integer.toString(id));
            ResultSet rs = stmn.executeQuery();

            while (rs.next()) {
                d = discoMapper(rs);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DiscoDAO.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
        }
        
        db.desconectar();
        
        return d;
    }
    
    public Disco buscarDiscoPorNombre(String nombre){
        Disco d = new Disco();
        
        DB db = new DB();
        db.conectar();
        
        try{
            Connection conn = db.getConn();
            
            PreparedStatement stmn = conn.prepareStatement(SQL_BUSCAR_DISCO_POR_NOMBRE);
            stmn.setString(1, "%" + nombre + "%");
            ResultSet rs = stmn.executeQuery();

            while (rs.next()) {
                d = discoMapper(rs);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DiscoDAO.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
        }
        
        db.desconectar();
        
        return d;
    }
}
