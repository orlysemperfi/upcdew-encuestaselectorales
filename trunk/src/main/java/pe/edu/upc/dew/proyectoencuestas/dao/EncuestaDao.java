/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.dao;

import java.util.List;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Encuesta;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Pregunta;

/**
 *
 * @author cramirez
 */
public interface EncuestaDao {

   List<Encuesta> getEncuestasPorDistritos(String distrito);
   List<Pregunta> getPreguntasPorEncuesta(Integer idEncuesta);

}
