package servicio;

import dao.GrupoDAO;
import java.util.List;
import model.Grupo;

public class GrupoServicio {
    private final GrupoDAO grupoDAO;
    
    public GrupoServicio(){
        grupoDAO = new GrupoDAO();
    }
    
    public List<Grupo> listarGrupos() {
        return grupoDAO.listarGrupos();
    }
}
