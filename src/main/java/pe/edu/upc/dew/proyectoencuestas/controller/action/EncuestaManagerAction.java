/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.controller.action;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.actions.DispatchAction;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;
import pe.edu.upc.dew.proyectoencuestas.dao.PreguntaDao;
import pe.edu.upc.dew.proyectoencuestas.form.EncuestaForm;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Pregunta;
import pe.edu.upc.dew.proyectoencuestas.service.bo.PreguntaService;


/**
 *
 * @author 2424005
 */
public class EncuestaManagerAction extends DispatchAction {
    
    /* forward name="success" path="" */
    private final static String SUCCESS = "success";
    
    /**
     * This is the Struts action method called on
     * http://.../actionPath?method=myAction1,
     * where "method" is the value specified in <action> element : 
     * ( <action parameter="method" .../> )
     */

      public ActionForward iniciar(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

           System.out.println("\n Iniciando el listado de encuestas");
           return mapping.findForward("exito");
    }

        public ActionForward configurar(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

            EncuestaForm encuestaForm = (EncuestaForm)form;

           System.out.println("\n Iniciando la configuracion con el código ---->"+ encuestaForm.getIdEncuesta());
           return mapping.findForward("configurar");
    }


           public ActionForward monitorear(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

           EncuestaForm encuestaForm = (EncuestaForm)form;
           System.out.println("\n Iniciando el monitoreo con el código ---->"+ encuestaForm.getIdEncuesta());
           return mapping.findForward("monitorear");
    }




     public ActionForward consultar(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

         EncuestaForm encuestaForm = (EncuestaForm)form;
           System.out.println("\n Iniciando la consulta detallada de una encuesta  con el código ---->"+ encuestaForm.getIdEncuesta());
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