/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.dao;

import pe.edu.upc.dew.proyectoencuestas.model.dto.Usuario;


/**
 *
 * @author cramirez
 */
public class UsuarioDaoImpl implements UsuarioDao{

     public Usuario getUsuarioPorUsername(String username) {
         
        Usuario usuario = new Usuario();

        if (username.equals("admin"))
        {
            usuario.setIdUsuario(1);
            usuario.setNombre("Carlos");
            usuario.setApellido("Torres");
            usuario.setDni("01234567");
            usuario.setRol(1);
            usuario.setUsername("admin");
            usuario.setPassword("admin");
        }
        else
        {
            usuario.setIdUsuario(2);
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
//        try {
//            connection = ConnectionUtils.getConnection();
//            st = connection.createStatement();
//            rs = st.executeQuery("select * from usuario where username='" + username + "'");
//            if (rs.next()) {
//                usuario = new Usuario();
//                usuario.setIdUsuario(rs.getInt("ID_USUARIO"));
//                usuario.setUsername(rs.getString("USERNAME"));
//                usuario.setPassword(rs.getString("PASSWORD"));
//                usuario.setNombre(rs.getString("NOMBRE"));
//                usuario.setApellidoPaterno(rs.getString("APELLIDO_PATERNO"));
//                usuario.setApellidoMaterno(rs.getString("APELLIDO_MATERNO"));
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            ConnectionUtils.closeResultSet(rs);
//            ConnectionUtils.closeStatement(st);
//            ConnectionUtils.closeConnection(connection);
//        }
        return usuario;
    }

}
