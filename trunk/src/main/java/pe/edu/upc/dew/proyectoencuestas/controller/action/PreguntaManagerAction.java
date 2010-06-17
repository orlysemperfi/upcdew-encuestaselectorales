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
import pe.edu.upc.dew.proyectoencuestas.model.dto.Pregunta;
import pe.edu.upc.dew.proyectoencuestas.service.bo.PreguntaBO;


/**
 *
 * @author Owner
 */
public class PreguntaManagerAction extends DispatchAction {

      public ActionForward aceptar(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {


        PreguntaBO preguntaBo= new PreguntaBO();
        ArrayList<Pregunta> preguntas = preguntaBo.ObtenerListadoPreguntas();
        System.out.println("hola como estaas"+preguntas.size());
        request.setAttribute("usuarios", preguntas);

        return mapping.findForward("exito");
    }

}
