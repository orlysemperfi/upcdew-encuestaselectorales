/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.dao;
import java.util.List;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Reporte;
/**
 *
 * @author Owner
 */
public interface ReporteDao {


    List<Reporte> getCantidadVotosxCandidato(String encuesta);

    
}