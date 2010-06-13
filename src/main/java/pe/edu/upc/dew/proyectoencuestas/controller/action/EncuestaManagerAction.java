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
import pe.edu.upc.dew.proyectoencuestas.dao.PreguntaDAO;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Pregunta;
import pe.edu.upc.dew.proyectoencuestas.service.bo.PreguntaBO;

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
    public ActionForward aceptar(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {



        PreguntaBO preguntaBO= new PreguntaBO();
        ArrayList<Pregunta> preguntas = preguntaBO.ObtenerListadoPreguntas();
        

         System.out.println("hola como estaas"+preguntas.size());



         PreguntaDAO preguntax = new PreguntaDAO();

        String valor= preguntax.GenerarCodigo();


         System.out.println(valor);

        Pregunta usuario = new Pregunta();
        usuario.setDescripcion("Hola como tas 1111");
        usuario.setTipo("Abierto1");

        Pregunta usuario1 = new Pregunta();
        usuario1.setDescripcion("Hola como tas 2222");
        usuario1.setTipo("Abierto3");

        Pregunta usuario2 = new Pregunta();
        usuario2.setDescripcion("Hola como tas 3333");
        usuario2.setTipo("Abierto4");


        ArrayList<Pregunta> usuarios = new ArrayList<Pregunta>();

        usuarios.add(usuario);
        usuarios.add(usuario1);
        usuarios.add(usuario2);


System.out.println("usuariossssssssssssssssssssssssssssssss"+ usuarios.size());

        request.setAttribute("usuarios", usuarios); 

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