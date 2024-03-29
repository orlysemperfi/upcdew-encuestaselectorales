/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upc.dew.proyectoencuestas.dao;

import pe.edu.upc.dew.proyectoencuestas.model.dto.Usuario;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Ubigeo;
import pe.edu.upc.dew.proyectoencuestas.util.MySqlDBConn;

/**
 *
 * @author cramirez
 */
public class UsuarioDaoImpl implements UsuarioDao {

    public Usuario getUsuarioPorUsername(String username, String password) {
        System.out.println("UsuarioDaoImpl.getUsuarioPorUsername");
        Usuario usuario = null;
//    
        Connection connection = null;
        Statement st = null;
        ResultSet rs = null;

        try {
            connection = MySqlDBConn.getConnection();
            st = connection.createStatement();
            rs = st.executeQuery("select cod_usu, nom_usu, ape_usu, nro_doc_usu, rol_usu, CodigoDistrito, user_usu, pass_usu from tb_usuario where user_usu='" + username + "' and pass_usu='" + password + "'");
            if (rs.next()) {

                usuario = new Usuario();
                usuario.setIdUsuario(rs.getString("cod_usu"));
                usuario.setNombre(rs.getString("nom_usu"));
                usuario.setApellido(rs.getString("ape_usu"));
                usuario.setDni(rs.getString("nro_doc_usu"));
                usuario.setRol(rs.getInt("rol_usu"));
                Ubigeo ubigeo = new Ubigeo();
                ubigeo.setCodDistrito(rs.getString("CodigoDistrito"));
                usuario.setUbigeo(ubigeo);
                usuario.setUsername(rs.getString("user_usu"));
                usuario.setPassword(rs.getString("pass_usu"));

            }
        } catch (SQLException e) {
            System.out.println("SQLException");
            throw new IllegalStateException("Error al obtener el usuario", e);
        } finally {
            MySqlDBConn.closeResultSet(rs);
            MySqlDBConn.closeStatement(st);
            MySqlDBConn.closeConnection(connection);
        }
        return usuario;
    }

    public String obtenerLoginUsuario(String sLogin) {

        String codigo = "0";
        Connection connection = null;
        Statement st = null;
        ResultSet rs = null;

        try {
            connection = MySqlDBConn.getConnection();
            st = connection.createStatement();
            rs = st.executeQuery("select  user_usu from tb_usuario where user_usu='" + sLogin + "'");
            while (rs.next()) {
                codigo = rs.getString("user_usu");
            }
        } catch (SQLException e) {
            System.out.println("SQLException");
            throw new IllegalStateException("Error al obtener el usuario", e);
        } finally {
            MySqlDBConn.closeResultSet(rs);
            MySqlDBConn.closeStatement(st);
            MySqlDBConn.closeConnection(connection);
        }
        return codigo;
    }

    public String obtenerContrasenaUsuario(String sLogin) {

        String contrasena = "0";
        Connection connection = null;
        Statement st = null;
        ResultSet rs = null;

        try {
            connection = MySqlDBConn.getConnection();
            st = connection.createStatement();
            rs = st.executeQuery("select  pass_usu from tb_usuario where user_usu='" + sLogin + "'");
            while (rs.next()) {
                contrasena = rs.getString("pass_usu");
            }
        } catch (SQLException e) {
            throw new IllegalStateException("Error al obtener el usuario", e);
        } finally {

            MySqlDBConn.closeResultSet(rs);
            MySqlDBConn.closeStatement(st);
            MySqlDBConn.closeConnection(connection);
        }
        return contrasena;
    }
}
