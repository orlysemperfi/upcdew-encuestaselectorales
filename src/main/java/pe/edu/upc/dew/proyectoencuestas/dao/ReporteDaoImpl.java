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
import pe.edu.upc.dew.proyectoencuestas.model.dto.Reporte;
import pe.edu.upc.dew.proyectoencuestas.util.MySqlDBConn;

/**
 *
 * @author Owner
 */
public class ReporteDaoImpl implements ReporteDao {


       public List<Reporte> getCantidadVotosxCandidato(String encuesta)
     {
           List<Reporte> listaVotos = new ArrayList<Reporte>();

		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;

                Reporte reporteEncuesta =null;

		// Preparar consulta
		String sql = "select * from tb_pregunta" ;

		// Ejecutar consulta
		try {
			conn = MySqlDBConn.getConnection();
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);

			// obtener la lista
			while(rs.next()){

                            reporteEncuesta = new Reporte();
                            reporteEncuesta.setCantidad(rs.getString(1));
                            reporteEncuesta.setDescripcion(rs.getString(2));
                            listaVotos.add(reporteEncuesta);

			}
		} catch (Exception e) {
                        e.printStackTrace();
                }
                finally {
			MySqlDBConn.closeResultSet(rs);
                        MySqlDBConn.closeStatement(stm);
                        MySqlDBConn.closeConnection(conn);
		}


         return listaVotos;
     }


}
