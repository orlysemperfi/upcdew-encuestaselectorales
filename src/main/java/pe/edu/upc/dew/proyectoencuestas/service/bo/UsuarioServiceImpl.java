/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.service.bo;

import pe.edu.upc.dew.proyectoencuestas.dao.UsuarioDao;
import pe.edu.upc.dew.proyectoencuestas.dao.UsuarioDaoImpl;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Usuario;


/**
 *
 * @author cramirez
 */
public class UsuarioServiceImpl implements UsuarioService{

    private UsuarioDao usuarioDao;

    public UsuarioServiceImpl(){
        this.usuarioDao = new UsuarioDaoImpl();
    }

    public Usuario getUsuarioPorUsername(String username) {
        return usuarioDao.getUsuarioPorUsername(username);
    }

}
