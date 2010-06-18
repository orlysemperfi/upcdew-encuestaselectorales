/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.dao;

import java.util.List;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Opcion;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Pregunta;

/**
 *
 * @author cramirez
 */
public interface PreguntaDao {

    List<Pregunta> getPreguntasPorEncuesta(int idEncuesta);

    List<Opcion> getOpcionesPorPregunta(int idPregunta);
            

}
