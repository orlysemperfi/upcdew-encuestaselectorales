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
		String sql =" select count(r.id_opc)as total,r.id_pre,des_pre,r.id_opc,des_opc "+  
                            " from tb_pregunta p, tb_opcion o,tb_result_fin r "+ 
                            " where r.id_enc=1    and r.id_pre=1 "+ 
                            " and p.id_pre=r.id_pre and o.id_opc=r.id_opc "+ 
                            " group by r.id_enc,r.id_opc,r.id_pre "+ 
                            " order by id_pre,des_pre ";



		// Ejecutar consulta
		try {
			conn = MySqlDBConn.getConnection();
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);

			// obtener la lista
			while(rs.next()){

                            reporteEncuesta = new Reporte();
                            reporteEncuesta.setCantidad(rs.getString(1));
                            reporteEncuesta.setTitulo(rs.getString(3));
                            reporteEncuesta.setDescripcion(rs.getString(5));
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
