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
import pe.edu.upc.dew.proyectoencuestas.model.dto.ResultadoEncuesta;
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

     public ActionForward iniciar(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

           System.out.println("\n Iniciando el monitoreo de encuestas");
           return mapping.findForward("exito");
    }

     public ActionForward consultar(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

           System.out.println("\n Iniciando la consulta del monitoreo de una encuesta");
           return mapping.findForward("consultar");
     }



    public ActionForward aceptar(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {


        return mapping.findForward("exito");
    }

    /**
     * This is the Struts action method called on
     * http://.../actionPath?method=myAction2,
     * where "method" is the value specified in <action> element :
     * ( <action parameter="method" .../> )
     */
    public ActionForward myAction2(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        return mapping.findForward(SUCCESS);
    }

}
