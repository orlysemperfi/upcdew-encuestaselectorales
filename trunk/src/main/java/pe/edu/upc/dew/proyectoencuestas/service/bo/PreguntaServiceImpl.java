/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.service.bo;

//import java.sql.SQLException;

import java.util.List;
//import javax.naming.NamingException;
import pe.edu.upc.dew.proyectoencuestas.dao.PreguntaDao;
import pe.edu.upc.dew.proyectoencuestas.dao.PreguntaDaoImpl;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Opcion;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Pregunta;

/**
 *
 * @author Owner
 */
public class PreguntaServiceImpl  implements PreguntaService {

private PreguntaDao preguntaDao;

public PreguntaServiceImpl()
{
    preguntaDao =  new PreguntaDaoImpl();
}

public List<Pregunta> getPreguntasPorEncuesta(int idEncuesta)
{
    return preguntaDao.getPreguntasPorEncuesta(idEncuesta);
}

public List<Opcion> getOpcionesPorPregunta(int idPregunta)
{
    return preguntaDao.getOpcionesPorPregunta(idPregunta);
}
//      public ArrayList<Pregunta> ObtenerListadoPreguntas() throws SQLException, NamingException   {
//		ArrayList<Pregunta> preguntas = new ArrayList<Pregunta>();
//                PreguntaDao preguntaDAO = new PreguntaDao();
//		preguntas = preguntaDAO.ObtenerListadoPreguntas();
//		return preguntas;
//	}

}
