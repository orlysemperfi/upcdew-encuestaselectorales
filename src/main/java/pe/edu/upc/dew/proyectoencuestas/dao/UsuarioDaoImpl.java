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
public class UsuarioDaoImpl implements UsuarioDao{

     public Usuario getUsuarioPorUsername(String username) {
         
        Usuario usuario = new Usuario();

        if (username.equals("admin"))
        {
            usuario.setIdUsuario("1");
            usuario.setNombre("Carlos");
            usuario.setApellido("Torres");
            usuario.setDni("01234567");
            usuario.setRol(1);
            usuario.setUsername("admin");
            usuario.setPassword("admin");
        }
        else
        {
            usuario.setIdUsuario("2");
            usuario.setNombre("Ana");
            usuario.setApellido("Lopez");
            usuario.setDni("12098364");
            usuario.setRol(2);
            usuario.setUsername("ana");
            usuario.setPassword("ana");

        }
//        Connection connection = null;
//        Statement st = null;
//        ResultSet rs = null;
//
//
//        try {
//            connection = MySqlDBConn.getConnection();
//            st = connection.createStatement();
//            rs = st.executeQuery("select cod_usu, nom_usu, ape_usu, nro_doc_usu, rol_usu, CodigoDistrito from tb_usuario where nom_usu='" + username + "'");
//            if (rs.next()) {
//                usuario = new Usuario();
//                usuario.setIdUsuario(rs.getString("cod_usu"));
//                usuario.setNombre(rs.getString("nom_usu"));
//                usuario.setApellido(rs.getString("ape_usu"));
//                usuario.setDni(rs.getString("nro_doc_usu"));
//                usuario.setRol(rs.getInt("rol_usu"));
//                Ubigeo ubigeo = new Ubigeo();
//                ubigeo.setCodDistrito("CodigoDistrito");
//                usuario.setUbigeo(ubigeo);
////                usuario.setUsername(rs.getString("USERNAME"));
////                usuario.setPassword(rs.getString("USERNAME"));
//
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
////            ConnectionUtils.closeResultSet(rs);
////            ConnectionUtils.closeStatement(st);
////            ConnectionUtils.closeConnection(connection);
//        }
        return usuario;
    }

}
