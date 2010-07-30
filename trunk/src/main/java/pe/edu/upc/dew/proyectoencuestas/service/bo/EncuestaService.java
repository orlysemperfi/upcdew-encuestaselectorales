/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.service.bo;

import java.util.List;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Encuesta;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Usuario;

/**
 *
 * @author cramirez
 */
public interface EncuestaService {

    public List<Encuesta> getEncuestas();
    public List<Encuesta> getEncuestasPorDistritos(String distrito);
    public void registrarRespuesta(Integer idEncuesta, Integer idOpcion, Integer idPregunta, Usuario usuario, String fecha);
    public Encuesta getEncuesta(Integer idEncuesta);
}
