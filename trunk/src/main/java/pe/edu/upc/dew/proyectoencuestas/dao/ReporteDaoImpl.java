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
import pe.edu.upc.dew.proyectoencuestas.model.dto.ReporteEncuesta;
import pe.edu.upc.dew.proyectoencuestas.util.MySqlDBConn;

/**
 *
 * @author Owner
 */
public class ReporteDaoImpl implements ReporteDao {


    public List<ReporteEncuesta> getListarPreguntasEncuesta(String idEncuesta)
     {
           List<ReporteEncuesta> listaVotos = new ArrayList<ReporteEncuesta>();

		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;

                ReporteEncuesta reporteEncuesta =null;

		// Preparar consulta
		String sql = " select   e.id_enc,p.id_pre,e.tit_enc,p.des_pre,p.tip_pre_gra   "+
                             " from  tb_pregunta p , tb_prexenc pe ,tb_encuesta e   "+
                             " where  p.id_pre=pe.id_pre  and   pe.id_enc=e.id_enc   and e.id_enc =" + idEncuesta;


		// Ejecutar consulta
		try {
			conn = MySqlDBConn.getConnection();
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);

			// obtener la lista
			while(rs.next()){

                            reporteEncuesta = new ReporteEncuesta();
                            reporteEncuesta.setIdEncuesta(rs.getString(1));
                            reporteEncuesta.setIdPregunta(rs.getString(2));
                            reporteEncuesta.setDesEncuesta(rs.getString(3));
                            reporteEncuesta.setDesPregunta(rs.getString(4));
                            reporteEncuesta.setTipoPreguntaGrafico(rs.getString(5));
                            reporteEncuesta.setResultado(getCantidadVotos(idEncuesta,reporteEncuesta.getIdPregunta()));
 
                            listaVotos.add(reporteEncuesta);

			}
		} catch (Exception e) {
                         throw new IllegalStateException("Error al obtener las preguntas de una encuesta",e);

                }
                finally {
			MySqlDBConn.closeResultSet(rs);
                        MySqlDBConn.closeStatement(stm);
                        MySqlDBConn.closeConnection(conn);
		}


         return listaVotos;
     }


       public List<Reporte> getCantidadVotos(String idEncuesta,String idPregunta)
     {
           List<Reporte> listaVotos = new ArrayList<Reporte>();

		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;

                Reporte reporteEncuesta =null;

		// Preparar consulta
		String sql =  " select (select count(r.id_opc)as total   from  tb_result_fin r    where r.id_enc=pe.id_enc  and r.id_pre=p.id_pre  and r.id_opc =t.id_opc) as Total, p.id_pre,des_pre,t.id_opc,des_opc  "+
                              " from tb_pregunta p, tb_opcion o, tb_opcxpre  t ,tb_prexenc pe "+
                              " where p.id_pre=t.id_pre and o.id_opc=t.id_opc and  pe.id_pre=p.id_pre and pe.id_enc="+ idEncuesta +" and p.id_pre="+ idPregunta +" ";

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
                      throw new IllegalStateException("Error al obtener el conteo de votos",e);

                }
                finally {
			MySqlDBConn.closeResultSet(rs);
                        MySqlDBConn.closeStatement(stm);
                        MySqlDBConn.closeConnection(conn);
		}


         return listaVotos;
     }


}
