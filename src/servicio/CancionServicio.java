package servicio;

import dao.CancionDAO;
import java.util.List;
import model.Cancion;

public class CancionServicio {
    private final CancionDAO cancionDAO;
    
    public CancionServicio(){
        cancionDAO = new CancionDAO();
    }
    
    public List<Cancion> buscarCancionesDisco(String nombre){
        return cancionDAO.buscarCancionesDisco(nombre);
    }
}
