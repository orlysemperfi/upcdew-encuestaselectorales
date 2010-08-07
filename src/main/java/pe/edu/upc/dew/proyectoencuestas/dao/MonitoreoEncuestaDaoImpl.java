/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import pe.edu.upc.dew.proyectoencuestas.model.dto.ResultadoEncuesta;
import pe.edu.upc.dew.proyectoencuestas.util.MySqlDBConn;
/**
 *
 * @author Gaby
 */
public class MonitoreoEncuestaDaoImpl implements MonitoreoEncuestaDao{

     public List<ResultadoEncuesta> getMonitoreoPorEncuesta(String encuesta)
     {
           List<ResultadoEncuesta> listamonitoreoEncuestas = new ArrayList<ResultadoEncuesta>();

		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;

                ResultadoEncuesta monitoreoEncuesta =null;

		// Preparar consulta
		String sql = "select * from ReporteAvance" +
                        " where  tit_enc '"+encuesta+"'";

		// Ejecutar consulta
		try {
			conn = MySqlDBConn.getConnection();
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);

			// obtener la lista
			while(rs.next()){
                            
                            monitoreoEncuesta = new ResultadoEncuesta();
                            monitoreoEncuesta.setId_enc(Integer.parseInt(rs.getString(1)));
                            
                            listamonitoreoEncuestas.add(monitoreoEncuesta);

			}
		} catch (SQLException e) {
                    throw new IllegalStateException("Error al obtener el monitoreo por encuesta", e);
                }
                finally {
			MySqlDBConn.closeResultSet(rs);
                        MySqlDBConn.closeStatement(stm);
                        MySqlDBConn.closeConnection(conn);
		}


         return listamonitoreoEncuestas;
     }

      public List<ResultadoEncuesta> getMonitoreoPorMayorAvanceDistritoxEncuesta(String encuesta)
     {
           List<ResultadoEncuesta> listamonitoreoEncuestas = new ArrayList<ResultadoEncuesta>();

		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;

                ResultadoEncuesta monitoreoEncuesta =null;

		// Preparar consulta
		String sql = "select * from vw_MayorAvanceDistritoxEncuesta" +
                        " where  tit_enc '"+encuesta+"'";

		// Ejecutar consulta
		try {
			conn = MySqlDBConn.getConnection();
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);

			// obtener la lista
			while(rs.next()){

                            monitoreoEncuesta = new ResultadoEncuesta();
                            monitoreoEncuesta.setId_enc(Integer.parseInt(rs.getString(1)));

                            listamonitoreoEncuestas.add(monitoreoEncuesta);

			}
		} catch (SQLException e) {
                    throw new IllegalStateException("Error al obtener el monitoreo por mayor avance distrito", e);
                }
                finally {
			MySqlDBConn.closeResultSet(rs);
                        MySqlDBConn.closeStatement(stm);
                        MySqlDBConn.closeConnection(conn);
		}


         return listamonitoreoEncuestas;
     }


       public List<ResultadoEncuesta> getMonitoreoAvanceDiarioxEncuesta(String encuesta)
     {
           List<ResultadoEncuesta> listamonitoreoEncuestas = new ArrayList<ResultadoEncuesta>();

		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;

                ResultadoEncuesta monitoreoEncuesta =null;

		// Preparar consulta
		String sql = "select * from vw_AvanceDiario" +
                        " where  tit_enc '"+encuesta+"'";

		// Ejecutar consulta
		try {
			conn = MySqlDBConn.getConnection();
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);

			// obtener la lista
			while(rs.next()){

                            monitoreoEncuesta = new ResultadoEncuesta();
                            monitoreoEncuesta.setId_enc(Integer.parseInt(rs.getString(1)));

                            listamonitoreoEncuestas.add(monitoreoEncuesta);

			}
		} catch (SQLException e) {
                    throw new IllegalStateException("Error al obtener el monitoreo avance diario", e);
                }
                finally {
			MySqlDBConn.closeResultSet(rs);
                        MySqlDBConn.closeStatement(stm);
                        MySqlDBConn.closeConnection(conn);
		}


         return listamonitoreoEncuestas;
     }

       public List<ResultadoEncuesta> getMonitoreoAvanceAcumuladoxEncuesta()
     {
           List<ResultadoEncuesta> listamonitoreoEncuestas = new ArrayList<ResultadoEncuesta>();

		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;

                ResultadoEncuesta monitoreoEncuesta =null;

		// Preparar consulta
		String sql = "select * from vw_AvanceDiario" ;

		// Ejecutar consulta
		try {
			conn = MySqlDBConn.getConnection();
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);

			// obtener la lista
			while(rs.next()){

                            monitoreoEncuesta = new ResultadoEncuesta();
                            monitoreoEncuesta.setId_enc(Integer.parseInt(rs.getString(1)));
                          
                            listamonitoreoEncuestas.add(monitoreoEncuesta);

			}
		} catch (SQLException e) {
                    throw new IllegalStateException("Error al obtener el monitoreo avance acumulado", e);
                }
                finally {
			MySqlDBConn.closeResultSet(rs);
                        MySqlDBConn.closeStatement(stm);
                        MySqlDBConn.closeConnection(conn);
		}


         return listamonitoreoEncuestas;
     }

    public List<ResultadoEncuesta> getMonitoreoPorEncuestas(String encuesta) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
