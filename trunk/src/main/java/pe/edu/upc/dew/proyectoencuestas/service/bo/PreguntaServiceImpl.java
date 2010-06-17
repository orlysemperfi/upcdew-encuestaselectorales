/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.service.bo;

import java.sql.SQLException;
import java.util.ArrayList;
import javax.naming.NamingException;
import pe.edu.upc.dew.proyectoencuestas.dao.PreguntaDao;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Pregunta;

/**
 *
 * @author Owner
 */
public class PreguntaServiceImpl  implements PreguntaService {


      public ArrayList<Pregunta> ObtenerListadoPreguntas() throws SQLException, NamingException   {
		ArrayList<Pregunta> preguntas = new ArrayList<Pregunta>();
                PreguntaDao preguntaDAO = new PreguntaDao();
		preguntas = preguntaDAO.ObtenerListadoPreguntas();
		return preguntas;
	}

}
