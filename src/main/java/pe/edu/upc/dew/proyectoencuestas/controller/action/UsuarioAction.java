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
     private EncuestaService encuestaService;
     
    /* forward name="success" path="" */
    private static final String SUCCESS = "exito";
    private static final String ERROR = "error";
    private static final String USERSUCCESS = "userexito";
    
 
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        this.usuarioService = new UsuarioServiceImpl();
        this.encuestaService = new EncuestaServiceImpl();

        String username = ((UsuarioForm)form).getUsername().trim();
        String password = ((UsuarioForm)form).getPassword().trim();


        String login=usuarioService.obtenerLoginUsuario(username);

        System.out.println("loginn "+login);

        if(!login.equals("0")){
           String contrasena=usuarioService.obtenerContrasenaUsuario(login);
           
           System.out.println("contrasena "+contrasena);

           if(contrasena.equals(password)){

               Usuario usuario = usuarioService.getUsuarioPorUsername(username, password);

                   System.out.println("usuario "+usuario.getNombre());

                    HttpSession session = request.getSession();
                    session.setAttribute("usuario", usuario);

                    if(usuario.getRol() == 1)
                    {
                        this.encuestaService = new EncuestaServiceImpl();
                        List<Encuesta> encuestas = encuestaService.getEncuestas();

                        if (encuestas.size() > 0){
                            request.setAttribute("encuestas", encuestas);
                            return mapping.findForward(SUCCESS);

                        } else {
                            return mapping.findForward(ERROR);
                        }

                    }
                    else
                    {
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
               request.setAttribute("mensaje","Password incorrecto");

            }

           }else{

                 request.setAttribute("mensaje","Usuario incorrecto");
           }


        return mapping.findForward(ERROR);
       
    }
}
