package principal;

import java.util.List;
import java.util.Scanner;
import model.Artista;
import model.Cancion;
import model.Disco;
import model.Grupo;
import servicio.ArtistaServicio;
import servicio.CancionServicio;
import servicio.DiscoServicio;
import servicio.GrupoServicio;

public class main {

    public static void menu(){
        System.out.println("1.- Listar artistas");
        System.out.println("2.- Listar grupos ");
        System.out.println("3.- Listar discos");
        System.out.println("4.- Buscar disco por ID");
        System.out.println("5.- Buscar disco por nombre");
        System.out.println("6.- Canciones de un disco");
        System.out.println("7.- Salir");
    }
    
    public static void main(String[] args) {
        
        int opcion = 0;
        int id = 0;
        String nombre = "";
        
        do {
            menu();
        
            Scanner leer = new Scanner(System.in);

            System.out.println("Introduzca una opción: ");
            opcion = leer.nextInt();
        
            switch(opcion){
                case 1: {
                    ArtistaServicio artistaServicio = new ArtistaServicio();

                    List<Artista> artistas = artistaServicio.listarArtistas();

                    for(Artista artista: artistas){
                        System.out.println("-------------------------------");
                        System.out.println("ID: " + artista.getId());
                        System.out.println("Papel: " + artista.getPapel());
                        System.out.println("Nombre: " + artista.getPersona().getNombre());

                        if(artista.getGrupo().getNombre() == null){
                            System.out.println("Grupo: SIN GRUPO");
                        }else{
                            System.out.println("Grupo: " + artista.getGrupo().getNombre());
                        }
                    } 

                    System.out.println("-------------------------------");
                    
                    break;
                }
                
                case 2: {
                    GrupoServicio grupoServicio = new GrupoServicio();
                    
                    List<Grupo> grupos = grupoServicio.listarGrupos();
                    
                    for(Grupo grupo: grupos){
                        System.out.println("-----------------------------------");
                        System.out.println("ID: " + grupo.getId());
                        System.out.println("Nombre: " + grupo.getNombre());
                    }
                    
                    System.out.println("-----------------------------------");
                    
                    break;
                }
                
                case 3: {
                    DiscoServicio discoServicio = new DiscoServicio();
                    
                    List<Disco> discos = discoServicio.listarDiscos();
                    
                    for(Disco disco: discos){
                        System.out.println("-------------------------------");
                        System.out.println("ID: " + disco.getId());
                        System.out.println("Título: " + disco.getTitulo());
                        System.out.println("Anio: " + disco.getAnio());
                        
                        if(disco.getArtista().getPersona().getNombre() == null){
                            System.out.println("Artista: SIN ARTISTA");
                        }else{
                            System.out.println("Artista: " + disco.getArtista().getPersona().getNombre());
                        }
                        
                        if(disco.getGrupo().getNombre() == null){
                            System.out.println("Grupo: SIN GRUPO");
                        }else{
                            System.out.println("Grupo: " + disco.getGrupo().getNombre());
                        }
                    }
                    
                    System.out.println("-------------------------------");
                    
                    break;
                }
                
                case 4:{
                    id = 0;
                    
                    System.out.println("Introduzca un ID: ");
                    id = leer.nextInt();
                    
                    DiscoServicio discoServicio = new DiscoServicio();
                    
                    Disco disco = discoServicio.buscarDiscoPorId(id);
                    
                    if(disco.getId() != 0){
                        System.out.println("-------------------------------");
                        System.out.println("ID: " + disco.getId());
                        System.out.println("Título: " + disco.getTitulo());
                        System.out.println("Anio: " + disco.getAnio());

                        if(disco.getArtista().getPersona().getNombre() == null){
                            System.out.println("Artista: SIN ARTISTA");
                        }else{
                            System.out.println("Artista: " + disco.getArtista().getPersona().getNombre());
                        }

                        if(disco.getGrupo().getNombre() == null){
                            System.out.println("Grupo: SIN GRUPO");
                        }else{
                            System.out.println("Grupo: " + disco.getGrupo().getNombre());
                        }

                        System.out.println("-------------------------------");
                    }else{
                        System.out.println("----------------------------------");
                        System.out.println("No existe ningún disco con ese ID");
                        System.out.println("----------------------------------");
                    }
                    
                    break;
                }
                
                case 5: {
                    nombre = "";
                    
                    System.out.println("Introduzca el nombre del disco: ");
                    nombre = leer.next();
                    
                    DiscoServicio discoServicio = new DiscoServicio();
                    
                    Disco disco = discoServicio.buscarDiscoPorNombre(nombre);
                    
                    if(disco.getId() != 0){
                        System.out.println("-------------------------------");
                        System.out.println("ID: " + disco.getId());
                        System.out.println("Título: " + disco.getTitulo());
                        System.out.println("Anio: " + disco.getAnio());

                        if(disco.getArtista().getPersona().getNombre() == null){
                            System.out.println("Artista: SIN ARTISTA");
                        }else{
                            System.out.println("Artista: " + disco.getArtista().getPersona().getNombre());
                        }

                        if(disco.getGrupo().getNombre() == null){
                            System.out.println("Grupo: SIN GRUPO");
                        }else{
                            System.out.println("Grupo: " + disco.getGrupo().getNombre());
                        }

                        System.out.println("-------------------------------");
                    }else{
                        System.out.println("-------------------------------------");
                        System.out.println("No existe ningún disco con ese nombre");
                        System.out.println("-------------------------------------");
                    }
                    
                    break;
                }
                
                case 6: {
                    nombre = "";
                    
                    System.out.println("Introduzca el nombre del disco: ");
                    nombre = leer.next();
                    
                    CancionServicio cancionServicio = new CancionServicio();
                    
                    List<Cancion> canciones = cancionServicio.buscarCancionesDisco(nombre);
                    
                    if(!canciones.isEmpty()){
                        for(Cancion cancion: canciones){
                        System.out.println("-------------------------------");
                        System.out.println("Disco: " + cancion.getDisco().getTitulo());
                        System.out.println("ID: " + cancion.getId());
                        System.out.println("Número: " + cancion.getNumero());
                        System.out.println("Título: " + cancion.getTitulo());
                    }
                        System.out.println("-------------------------------");
                    }else{
                        System.out.println("----------------------------------");
                        System.out.println("No existe ningún disco con ese nombre");
                        System.out.println("----------------------------------");
                    }
                    
                    break;
                }
            }
        } while (opcion != 7);
    }
}
