/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.service.bo;

import java.util.List;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Reporte;
import pe.edu.upc.dew.proyectoencuestas.model.dto.ReporteEncuesta;

/**
 *
 * @author Sofía
 */
public interface ReporteService {

      List<Reporte> getCantidadVotos(String encuesta,String idPregunta);
      List<ReporteEncuesta> getListarPreguntasEncuesta(String encuesta,String ruta);

}
