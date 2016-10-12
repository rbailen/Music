package servicio;

import dao.ArtistaDAO;
import java.util.List;
import model.Artista;

public class ArtistaServicio {
    
    private final ArtistaDAO artistaDAO;
    
    public ArtistaServicio(){
        artistaDAO = new ArtistaDAO();
    }
    
    public List<Artista> listarArtistas() {
        return artistaDAO.listarArtistas();
    }
}
