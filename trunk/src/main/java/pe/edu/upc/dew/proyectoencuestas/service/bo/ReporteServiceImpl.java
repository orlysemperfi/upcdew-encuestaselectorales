/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.service.bo;

import java.util.List;
import pe.edu.upc.dew.proyectoencuestas.dao.ReporteDao;
import pe.edu.upc.dew.proyectoencuestas.dao.ReporteDaoImpl;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Reporte;

/**
 *
 * @author Sofía
 */
public class ReporteServiceImpl implements ReporteService {

    private  ReporteDao reporteDao=null;

    public ReporteServiceImpl(){

    reporteDao = new ReporteDaoImpl();

    }

   public  List<Reporte> getCantidadVotosxCandidato(String encuesta){
     return  reporteDao.getCantidadVotosxCandidato(encuesta);
   }


}
