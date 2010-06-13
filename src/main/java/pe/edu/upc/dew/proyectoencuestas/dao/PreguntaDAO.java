/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.dao;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import pe.edu.upc.dew.proyectoencuestas.util.MySqlDBConn;

  
/**
 *
 * @author Owner
 */
public class PreguntaDAO {

    public String GenerarCodigo()throws Exception {

	String codigo = null;
        Connection conn = null;
	Statement stm = null;
	ResultSet rst = null;

	try {
            String sql;
            sql = "select  NombreDistrito as Valor  from tb_distrito;";
            conn = getConnection();
            stm = conn.createStatement();
            rst = stm.executeQuery(sql);

            while (rst.next()) {
                codigo = rst.getString(1);
                                            }
            rst.close();
            stm.close();
            conn.close();

            System.out.println("OBTENIENDO CODIGO"+codigo);

            if (codigo == null)
                codigo = "U00001";
            else
                codigo = "U" + codigo;

	} catch (SQLException e) {
            e.printStackTrace();
            codigo = "U00000";
	}
	  return codigo;
    }


    	//Para obtener una conexion.
	private Connection getConnection() {

		MySqlDBConn cnx = new MySqlDBConn();
		return cnx.getConnection();
	}

}
