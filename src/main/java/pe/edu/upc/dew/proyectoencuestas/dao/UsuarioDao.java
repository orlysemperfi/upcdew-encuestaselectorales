/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.dao;

import pe.edu.upc.dew.proyectoencuestas.model.dto.Usuario;

/**
 *
 * 
 * @author cramirez
 */
public interface UsuarioDao {

    Usuario getUsuarioPorUsername(String username);

}
