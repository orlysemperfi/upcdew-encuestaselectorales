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
import pe.edu.upc.dew.proyectoencuestas.form.PreguntaManagerForm;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Pregunta;
import pe.edu.upc.dew.proyectoencuestas.service.bo.PreguntaService;
import pe.edu.upc.dew.proyectoencuestas.service.bo.PreguntaServiceImpl;

/**
 *
 * @author Owner
 */
public class PreguntaManagerAction extends org.apache.struts.action.Action {


    private PreguntaService preguntaService;
    private static final String SUCCESS = "exito";
    private static final String ERROR = "error";

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        this.preguntaService = new PreguntaServiceImpl();

        int idEncuesta = ((PreguntaManagerForm)form).getNumber();
      
        List<Pregunta> preguntas = preguntaService.getPreguntasPorEncuesta(idEncuesta);

            request.setAttribute("preguntas", preguntas);

//            if(preguntas.size() > 0)
//            {
                return mapping.findForward(SUCCESS);

//            } else
//            {
//                return mapping.findForward(ERROR);
//            }

    }

//      public ActionForward aceptar(ActionMapping mapping, ActionForm  form,
//            HttpServletRequest request, HttpServletResponse response)
//            throws Exception {
//
//
//        PreguntaService preguntaBo= new PreguntaServiceImpl();
//        ArrayList<Pregunta> preguntas = preguntaBo.ObtenerListadoPreguntas();
//        System.out.println("hola como estaas"+preguntas.size());
//        request.setAttribute("usuarios", preguntas);
//
//        return mapping.findForward("exito");
//    }

}
