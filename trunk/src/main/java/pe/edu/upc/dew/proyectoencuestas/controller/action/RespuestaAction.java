/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.controller.action;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import pe.edu.upc.dew.proyectoencuestas.form.RespuestaForm;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Usuario;
import pe.edu.upc.dew.proyectoencuestas.service.bo.EncuestaService;
import pe.edu.upc.dew.proyectoencuestas.service.bo.EncuestaServiceImpl;

/**
 *
 * @author cramirez
 */
public class RespuestaAction extends DispatchAction {
    
    private EncuestaService encuestaService;
    private static final String SUCCESS = "exito";
    private static final String REGISTRO = "registrar";
    
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */

    public ActionForward registrar(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

          this.encuestaService = new EncuestaServiceImpl();

            String idEncuesta = ((RespuestaForm)form).getIdEncuesta();

            System.out.println("este es el id de la encuesta --->" + idEncuesta );         

            String rptas = ((RespuestaForm)form).getRptas();
            String[] respuestas = rptas.substring(0, rptas.length()-1).split("[|]");
            HttpSession session = request.getSession();
            Usuario usuario = (Usuario)session.getAttribute("usuario");

            SimpleDateFormat formateador = new SimpleDateFormat("dd/MM/yyyy");

            Date fecha = new Date();
            DateFormat df = DateFormat.getDateInstance(DateFormat.SHORT);
            String fechaFormato = formateador.format(fecha);
            
            System.out.println("este es el id del usuario -->" + usuario.getIdUsuario());
            System.out.println("rptas todas v2------>" + rptas.substring(0, rptas.length()-1));

            if (respuestas.length > 0)
            {
                for (String rpta : respuestas)
                {
                    if (!rpta.equals(""))
                    {
                        System.out.println("este es la seleccion v6 -->" + rpta );

                        String pr = rpta.substring(0,rpta.indexOf("-"));
                        System.out.println("este es el id de la pregunta -->" + pr);

                        String op = rpta.substring(rpta.indexOf("-")+1, rpta.length());
                        System.out.println("este es el id de la opcion -->" + op);

                        encuestaService.registrarRespuesta(Integer.parseInt(idEncuesta), Integer.parseInt(op), Integer.parseInt(pr), usuario, fechaFormato);
                    }
                }
            }
            return mapping.findForward(REGISTRO);
        
    }

    public ActionForward aceptar(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {


        return mapping.findForward(SUCCESS);
    }
}
