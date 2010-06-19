/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.dao;

import java.util.List; 
import pe.edu.upc.dew.proyectoencuestas.model.dto.ResultadoEncuesta;
/**
 *
 * @author Gaby
 */
public interface MonitoreoEncuestaDao {

//Sale del impl

   List<ResultadoEncuesta> getMonitoreoPorEncuesta(String encuesta);

   List<ResultadoEncuesta> getMonitoreoPorMayorAvanceDistritoxEncuesta(String encuesta);

   List<ResultadoEncuesta> getMonitoreoAvanceDiarioxEncuesta(String encuesta);

   List<ResultadoEncuesta> getMonitoreoAvanceAcumuladoxEncuesta();
}
