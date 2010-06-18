/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import pe.edu.upc.dew.proyectoencuestas.model.dto.MonitoreoEncuesta;
import pe.edu.upc.dew.proyectoencuestas.util.MySqlDBConn;
/**
 *
 * @author Gaby
 */
public class MonitoreoEncuestaDaoImpl implements MonitoreoEncuestaDao{

     public List<MonitoreoEncuesta> getMonitoreoPorEncuesta(String encuesta)
     {
           List<MonitoreoEncuesta> listamonitoreoEncuestas = new ArrayList<MonitoreoEncuesta>();

		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;

                MonitoreoEncuesta monitoreoEncuesta =null;

		// Preparar consulta
		String sql = "select * from ReporteAvance" +
                        " where id_enc '"+encuesta+"'";

		// Ejecutar consulta
		try {
			conn = MySqlDBConn.getConnection();
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);

			// obtener la lista
			while(rs.next()){
                            
                            monitoreoEncuesta = new MonitoreoEncuesta();
                            monitoreoEncuesta.setId_enc(Integer.parseInt(rs.getString(1)));

                            listamonitoreoEncuestas.add(monitoreoEncuesta);

			}
		} catch (Exception e) {
                        e.printStackTrace();
                }
                finally {
			MySqlDBConn.closeResultSet(rs);
                        MySqlDBConn.closeStatement(stm);
                        MySqlDBConn.closeConnection(conn);
		}


         return listamonitoreoEncuestas;
     }

    public List<MonitoreoEncuesta> getMonitoreoPorEncuestas(String encuesta) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
