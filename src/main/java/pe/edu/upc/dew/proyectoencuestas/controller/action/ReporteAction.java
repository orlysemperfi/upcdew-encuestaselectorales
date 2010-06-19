/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.controller.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import pe.edu.upc.dew.proyectoencuestas.form.ReporteForm;

/**
 *
 * @author Owner
 */
public class ReporteAction  extends DispatchAction{


      public ActionForward iniciar(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
             ReporteForm reporteForm = (ReporteForm)form;

             request.setAttribute("encuestaDes", reporteForm.getDescripcion());


           System.out.println("\n Iniciando Reportes");
           return mapping.findForward("exito");
    }
    
}
