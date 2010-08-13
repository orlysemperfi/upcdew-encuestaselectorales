/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.service.bo;

import pe.edu.upc.dew.proyectoencuestas.model.dto.Usuario;

/**
 *
 * @author cramirez
 */
public interface UsuarioService {

    Usuario getUsuarioPorUsername(String username, String password);
    String obtenerLoginUsuario(String sLogin);
    String obtenerContrasenaUsuario(String sLogin);
    
}
