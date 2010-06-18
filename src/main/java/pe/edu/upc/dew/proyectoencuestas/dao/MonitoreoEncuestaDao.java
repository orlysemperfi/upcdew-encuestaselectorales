/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.dao;

import java.util.List; 
import pe.edu.upc.dew.proyectoencuestas.model.dto.MonitoreoEncuesta;
/**
 *
 * @author Gaby
 */
public interface MonitoreoEncuestaDao {

//Sale del impl
//List<MonitoreoEncuesta> getMonitoreoPorEncuesta(String encuesta);
   List<MonitoreoEncuesta> getMonitoreoPorEncuestas(String encuesta);

    List<MonitoreoEncuesta> getMonitoreoPorMayorAvanceDistritoxEncuesta(String encuesta);

     List<MonitoreoEncuesta> getMonitoreoAvanceDiarioxEncuesta(String encuesta);

      List<MonitoreoEncuesta> getMonitoreoAvanceAcumuladoxEncuesta();
}
