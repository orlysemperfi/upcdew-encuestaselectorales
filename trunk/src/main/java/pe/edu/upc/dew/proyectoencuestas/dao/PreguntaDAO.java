/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.dao;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import javax.naming.NamingException;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Pregunta;
import pe.edu.upc.dew.proyectoencuestas.util.MySqlDBConn;

  
/**
 *
 * @author Owner
 */
public class PreguntaDAO {


    public  ArrayList<Pregunta>  ObtenerListadoPreguntas()
	throws SQLException, NamingException{
		Connection conn = null;
		PreparedStatement stm = null;
		ResultSet rs = null;
		ArrayList preguntas = new ArrayList();
                 Pregunta pregunta =null;

		// Preparar consulta
		String sql = "select a.id_pre, a.des_pre,c.des_opc from tb_pregunta a , tb_opcxpre b, tb_opcion c "+
                             "where a.id_pre=b.id_pre and b.id_opc=c.id_opc; ";

		// Ejecutar consulta
		try {
			conn =getConnection();
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();

			// obtener la lista
			while(rs.next()){
                            System.out.print("Preguntasssss"+ rs.getString(3) +"\n");

                            pregunta= new Pregunta();
                            pregunta.setIdPregunta(Integer.parseInt(rs.getString(1)));
                            pregunta.setDescripcion(rs.getString(2));
                            preguntas.add(pregunta);


			}
		} finally {
			rs.close();
                        stm.close();
                        conn.close();
		}

		return preguntas;
	}


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
