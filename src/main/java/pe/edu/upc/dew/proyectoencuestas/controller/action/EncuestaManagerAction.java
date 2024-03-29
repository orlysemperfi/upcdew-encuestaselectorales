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
import pe.edu.upc.dew.proyectoencuestas.form.EncuestaForm;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Encuesta;
import pe.edu.upc.dew.proyectoencuestas.service.bo.EncuestaService;
import pe.edu.upc.dew.proyectoencuestas.service.bo.EncuestaServiceImpl;

/**
 *
 * @author 2424005
 */
public class EncuestaManagerAction extends DispatchAction {

    private EncuestaService encuestaService;
    private static final String SUCCESS = "exito";
    private static final String ERROR = "error";
    private static final String ERROR_SELECCION = "errorselencuesta";


   
    public ActionForward Iniciar(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        this.encuestaService = new EncuestaServiceImpl();
        String distrito = ((EncuestaForm)form).getDistrito();

        List<Encuesta> encuestas = encuestaService.getEncuestasPorDistritos(distrito);

        if (encuestas == null)
        {
            return mapping.findForward(ERROR_SELECCION);
        }
        else
        {
            if (encuestas.size() > 0){

                request.setAttribute("encuestas", encuestas);
                return mapping.findForward(SUCCESS);               

            } else {
                return mapping.findForward(ERROR);
            }
        }

    }
      
    public ActionForward actualizar(ActionMapping mapping, ActionForm  form,
        HttpServletRequest request, HttpServletResponse response)
        throws Exception
    {

           this.encuestaService = new EncuestaServiceImpl();
           EncuestaForm encuestaForm = (EncuestaForm)form;

           encuestaService.actualizarEncuesta(encuestaForm.getIdEncuesta(), encuestaForm.getNombre(), encuestaForm.getEstado(), encuestaForm.getFechaInicio(), encuestaForm.getFechaFin());
           List<Encuesta> encuestas = encuestaService.getEncuestas();
           request.setAttribute("encuestas", encuestas);

           return mapping.findForward(SUCCESS);
    }

       public ActionForward iniciar(ActionMapping mapping, ActionForm  form,
        HttpServletRequest request, HttpServletResponse response)
        throws Exception
    {

           this.encuestaService = new EncuestaServiceImpl();
           EncuestaForm encuestaForm = (EncuestaForm)form;
           List<Encuesta> encuestas = encuestaService.getEncuestas();
           request.setAttribute("encuestas", encuestas);

           return mapping.findForward(SUCCESS);
    }

    public ActionForward configurar(ActionMapping mapping, ActionForm  form,
        HttpServletRequest request, HttpServletResponse response)
        throws Exception
    {
          this.encuestaService = new EncuestaServiceImpl();
           EncuestaForm encuestaForm = (EncuestaForm)form;
           Encuesta encuesta=encuestaService.getEncuesta(encuestaForm.getIdEncuesta());
           encuestaForm.setIdEncuesta(encuesta.getIdEncuesta());
           encuestaForm.setEstado(encuesta.getEstado());
           encuestaForm.setFechaInicio(encuesta.getFechaInicio());
           encuestaForm.setFechaFin(encuesta.getFechaFin());
            encuestaForm.setNombre(encuesta.getNombre());
           System.out.println("\n Iniciando la configuracion con el c�digo ---->"+ encuestaForm.getIdEncuesta());

           return mapping.findForward("configurar");
    }

    public ActionForward monitorear(ActionMapping mapping, ActionForm  form,
    HttpServletRequest request, HttpServletResponse response)
    throws Exception
    {

           EncuestaForm encuestaForm = (EncuestaForm)form;
           System.out.println("\n Iniciando el monitoreo con el c�digo ---->"+ encuestaForm.getIdEncuesta());
           return mapping.findForward("monitorear");
    }

     public ActionForward consultar(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

         EncuestaForm encuestaForm = (EncuestaForm)form;
           System.out.println("\n Iniciando la consulta detallada de una encuesta  con el c�digo ---->"+ encuestaForm.getIdEncuesta());
           return mapping.findForward("consultar");
     }

    public ActionForward aceptar(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {


        return mapping.findForward("exito");
    }
    
   

//
//    public ActionForward myAction2(ActionMapping mapping, ActionForm  form,
//            HttpServletRequest request, HttpServletResponse response)
//            throws Exception {
//
//        return mapping.findForward(SUCCESS);
//    }
}