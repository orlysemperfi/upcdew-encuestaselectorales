/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.controller.action;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import pe.edu.upc.dew.proyectoencuestas.form.ReporteForm;
import pe.edu.upc.dew.proyectoencuestas.model.dto.ReporteEncuesta;
import pe.edu.upc.dew.proyectoencuestas.service.bo.ReporteService;
import pe.edu.upc.dew.proyectoencuestas.service.bo.ReporteServiceImpl;

/**
 *
 * @author Owner
 */
public class ReporteAction  extends DispatchAction{

    //variable sin esado
    private ReporteService reporteBO;

      public ActionForward iniciar(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
          
             this.reporteBO =  new ReporteServiceImpl();

             String ruta =getServlet().getServletContext().getRealPath("/")+"images/";
             ReporteForm reporteForm = (ReporteForm)form;

             List<ReporteEncuesta> reporteEncuesta = reporteEncuesta=reporteBO.getListarPreguntasEncuesta(reporteForm.getIdEncuesta(),ruta);
             request.setAttribute("encuestaDes", reporteForm.getDescripcion());
             request.setAttribute("preguntas", reporteEncuesta);

           return mapping.findForward("exito");
    }

 
}
