/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.dao;

import java.util.List;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Encuesta;

/**
 *
 * @author Owner
 */
public interface EncuestaDao {

    List<Encuesta> getEncuestasPorDistritos(String distrito);
}

