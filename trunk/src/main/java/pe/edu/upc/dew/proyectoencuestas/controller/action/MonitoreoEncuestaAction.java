/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.controller.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import pe.edu.upc.dew.proyectoencuestas.form.MonitoreoEncuestaForm;
import pe.edu.upc.dew.proyectoencuestas.model.dto.MonitoreoEncuesta;
//import pe.edu.upc.dew.proyectoencuestas.service.bo.MonitoreoEncuestaService;

/**
 *
 * @author Gaby
 */
public class MonitoreoEncuestaAction extends org.apache.struts.action.Action{

  //   private MonitoreoEncuestaService monitoreoEncuestaService;
    /* forward name="success" path="" */
    private static final String SUCCESS = "exito";
    private static final String ERROR = "error";
    private static final String USERSUCCESS = "userexito";

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

      

        String encuesta = ((MonitoreoEncuestaForm)form).getEncuesta();


       // MonitoreoEncuesta monitoreoEncuesta = monitoreoEncuestaService.getMonitoreoPorEncuesta(encuesta);

       return mapping.findForward(SUCCESS);
       
    }

}
