/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.service.bo;

import java.util.List;
import pe.edu.upc.dew.proyectoencuestas.dao.EncuestaDao;
import pe.edu.upc.dew.proyectoencuestas.dao.EncuestaDaoImpl;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Encuesta;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Usuario;

/**
 *
 * @author cramirez
 */
public class EncuestaServiceImpl implements EncuestaService{

    private EncuestaDao encuestaDao;

    public EncuestaServiceImpl(){
        this.encuestaDao = new EncuestaDaoImpl();
    }

    public List<Encuesta> getEncuestas(){
        return encuestaDao.getEncuestas();
    }

    public List<Encuesta> getEncuestasPorDistritos(String distrito) {
        return encuestaDao.getEncuestasPorDistritos(distrito);
    }

    public void registrarRespuesta(Integer idEncuesta, Integer idOpcion, Integer idPregunta, Usuario usuario, String fecha)
    {
       encuestaDao.registrarRespuesta(idEncuesta, idOpcion, idPregunta, usuario, fecha);
    }

      public void actualizarEncuesta(Integer idEncuesta, String nombre,String estado,String fechaInicio, String fechaFinal)
        {
       encuestaDao.actualizarEncuesta(idEncuesta, nombre, estado, fechaInicio, fechaFinal);  
    }



    public Encuesta getEncuesta(Integer idEncuesta)
    {
        return encuestaDao.getEncuesta(idEncuesta);
    }
}
