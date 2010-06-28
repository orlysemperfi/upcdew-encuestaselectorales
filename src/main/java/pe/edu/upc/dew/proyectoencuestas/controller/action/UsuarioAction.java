/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.controller.action;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import pe.edu.upc.dew.proyectoencuestas.form.UsuarioForm;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Encuesta;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Usuario;
import pe.edu.upc.dew.proyectoencuestas.service.bo.EncuestaService;
import pe.edu.upc.dew.proyectoencuestas.service.bo.EncuestaServiceImpl;
import pe.edu.upc.dew.proyectoencuestas.service.bo.UsuarioService;
import pe.edu.upc.dew.proyectoencuestas.service.bo.UsuarioServiceImpl;

/**
 *
 * @author cramirez
 */
public class UsuarioAction extends org.apache.struts.action.Action {

     private UsuarioService usuarioService;
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

        this.usuarioService = new UsuarioServiceImpl();

        String username = ((UsuarioForm)form).getUsername();
        String password = ((UsuarioForm)form).getPassword();
      
        Usuario usuario = usuarioService.getUsuarioPorUsername(username, password);

        if (usuario == null)
        {
            return mapping.findForward(ERROR);
        }
        else
        {
            if (usuario.getUsername().equals(username) && usuario.getPassword().equals(password)){

               // request.setAttribute("usuario", usuario);

                HttpSession session = request.getSession();
                session.setAttribute("usuario", usuario);

                if(usuario.getRol() == 1)
                    return mapping.findForward(SUCCESS);
                else
                {
                    EncuestaService encuestaService = new EncuestaServiceImpl();
                    List<Encuesta> encuestas = encuestaService.getEncuestasPorDistritos(usuario.getUbigeo().getCodDistrito());

                    if (encuestas == null)
                    {
                        return mapping.findForward(ERROR);
                    }
                    else
                    {
                        if (encuestas.size() > 0){

                            request.setAttribute("encuestas", encuestas);
                            return mapping.findForward(USERSUCCESS);

                        } else {
                            return mapping.findForward(ERROR);
                        }
                    }                   
                }

            } else {
                return mapping.findForward(ERROR);
            }
        }
       
    }
}
