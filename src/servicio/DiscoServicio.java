package servicio;

import dao.DiscoDAO;
import java.util.List;
import model.Disco;

public class DiscoServicio {
    private final DiscoDAO discoDAO;
    
    public DiscoServicio(){
        discoDAO = new DiscoDAO();
    }
    
    public List<Disco> listarDiscos(){
        return discoDAO.listarDiscos();
    }
    
    public Disco buscarDiscoPorId(int id){
        return discoDAO.buscarDiscoPorId(id);
    }
    
    public Disco buscarDiscoPorNombre(String nombre){
        return discoDAO.buscarDiscoPorNombre(nombre);
    }
}
