/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.service.bo;

import java.sql.SQLException;
import java.util.ArrayList;
import javax.naming.NamingException;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Pregunta;

/**
 *
 * @author Owner
 */
public interface   PreguntaService {

    ArrayList<Pregunta> ObtenerListadoPreguntas()throws SQLException, NamingException  ;
    
}
