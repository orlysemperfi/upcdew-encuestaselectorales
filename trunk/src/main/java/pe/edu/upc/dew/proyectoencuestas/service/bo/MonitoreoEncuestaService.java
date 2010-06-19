package pe.edu.upc.dew.proyectoencuestas.service.bo;

import java.util.List;
import pe.edu.upc.dew.proyectoencuestas.model.dto.ResultadoEncuesta;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Encuesta;

/**
 *
 * @author Owner
 */
public interface   MonitoreoEncuestaService {

    List<ResultadoEncuesta> getPreguntasPorEncuesta(String idEncuesta);

    List<ResultadoEncuesta> getMonitoreoPorMayorAvanceDistritoxEncuesta(String idEncuesta);

    List<ResultadoEncuesta> getMonitoreoAvanceDiarioxEncuesta(String idEncuesta);

    List<ResultadoEncuesta> getMonitoreoAvanceAcumuladoxEncuesta();



}
