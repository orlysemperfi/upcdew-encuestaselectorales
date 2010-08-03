/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.service.bo;

import java.util.List;
import pe.edu.upc.dew.proyectoencuestas.dao.ReporteDao;
import pe.edu.upc.dew.proyectoencuestas.dao.ReporteDaoImpl;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Reporte;
import pe.edu.upc.dew.proyectoencuestas.model.dto.ReporteEncuesta;
import pe.edu.upc.dew.proyectoencuestas.util.GeneradorGraficos;
/**
 *
 * @author Sofía
 */
public class ReporteServiceImpl implements ReporteService {

    private  ReporteDao reporteDao=null;

    public ReporteServiceImpl(){

    reporteDao = new ReporteDaoImpl();

    }

   public  List<Reporte> getCantidadVotos(String encuesta,String idPregunta){
     return  reporteDao.getCantidadVotos(encuesta,idPregunta);
   }

     public List<ReporteEncuesta> getListarPreguntasEncuesta(String encuesta,String ruta)
  {

      List<ReporteEncuesta> reporte = reporteDao.getListarPreguntasEncuesta(encuesta);

      GeneradorGraficos genera= new GeneradorGraficos();
      for(int x =0 ; x<reporte.size();x++){

        reporte.get(x).setRutaReporte(genera.PieChart3D( reporte.get(x).getResultado(), ruta+ reporte.get(x).getIdEncuesta()+reporte.get(x).getIdPregunta()));
      System.out.println("miraaaaaaaaaa"+reporte.get(x).getRutaReporte());
      }

     return  reporte;
   }

}
