/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.dao;

import java.util.List;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Encuesta;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Usuario;

/**
 *
 * @author Owner
 */
public interface EncuestaDao {

    public List<Encuesta> getEncuestas();
    
    public List<Encuesta> getEncuestasPorDistritos(String distrito);

    public void registrarRespuesta(Integer idEncuesta, Integer idOpcion, Integer idPregunta, Usuario usuario, String fecha);
}

