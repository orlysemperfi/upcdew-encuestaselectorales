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

import pe.edu.upc.dew.proyectoencuestas.model.dto.Encuesta;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Pregunta;
import pe.edu.upc.dew.proyectoencuestas.util.MySqlDBConn;

/**
 *
 * @author cramirez
 */
public class EncuestaDaoImpl implements EncuestaDAO{

     public List<Encuesta> getEncuestasPorDistritos(String distrito)
     {
           List<Encuesta> listaEncuestas = new ArrayList<Encuesta>();

		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;

                Encuesta encuesta =null;

		// Preparar consulta
		String sql = "select a.id_enc, a.tit_enc, a.fec_ini_enc, a.fec_fin_enc from tb_encuesta a,"+
                        " tb_encxdist b" +
                        " where a.id_enc = b.id_enc and b.CodigoDistrito='"+distrito+"'";

		// Ejecutar consulta
		try {
			conn = MySqlDBConn.getConnection();
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);

			// obtener la lista
			while(rs.next()){
                            
                            encuesta = new Encuesta();
                            encuesta.setIdEncuesta(Integer.parseInt(rs.getString(1)));
                            encuesta.setNombre(rs.getString(2));
                            encuesta.setFechaInicio(rs.getString(3));
                            encuesta.setFechaFin(rs.getString(4));
                            listaEncuestas.add(encuesta);

			}
		} catch (Exception e) {
                        e.printStackTrace();
                }
                finally {
			MySqlDBConn.closeResultSet(rs);
                        MySqlDBConn.closeStatement(stm);
                        MySqlDBConn.closeConnection(conn);
		}

		
         return listaEncuestas;
     }

      public List<Pregunta> getPreguntasPorEncuesta(Integer idEncuesta)
      {
         List<Pregunta> listaPreguntas = new ArrayList<Pregunta>();

		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;

                Pregunta pregunta =null;

		// Preparar consulta
		String sql = "select a.id_pre, a.des_pre from tb_pregunta a, tb_prexenc b"+
                             " where a.id_pre = b.id_pre and b.id_enc="+idEncuesta;

		// Ejecutar consulta
		try {
			conn = MySqlDBConn.getConnection();
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);

			// obtener la lista
			while(rs.next()){

                            pregunta = new Pregunta();
                            pregunta.setIdPregunta(Integer.parseInt(rs.getString(1)));
                            pregunta.setDescripcion(rs.getString(2));
                          
                            listaPreguntas.add(pregunta);

			}
		} catch (Exception e) {
                        e.printStackTrace();
                }
                finally {
			MySqlDBConn.closeResultSet(rs);
                        MySqlDBConn.closeStatement(stm);
                        MySqlDBConn.closeConnection(conn);
		}


         return listaPreguntas;

      }

}
