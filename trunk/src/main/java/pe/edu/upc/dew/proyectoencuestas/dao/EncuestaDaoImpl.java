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
import pe.edu.upc.dew.proyectoencuestas.model.dto.Ubigeo;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Usuario;
import pe.edu.upc.dew.proyectoencuestas.util.MySqlDBConn;

/**
 *
 * @author cramirez
 */
public class EncuestaDaoImpl implements EncuestaDao{

     public List<Encuesta> getEncuestas()
     {
           List<Encuesta> listaEncuestas = new ArrayList<Encuesta>();

		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;

                Encuesta encuesta =null;

		// Preparar consulta
		String sql = "select a.id_enc, a.tit_enc, a.fec_ini_enc, a.fec_fin_enc, a.pob_enc from tb_encuesta a";

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
                            encuesta.setMuestra(Integer.parseInt(rs.getString(5)));
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

    public void registrarRespuesta(Integer idEncuesta, Integer idOpcion, Integer idPregunta, Usuario usuario, String fecha)
    {        
        Connection connection = null;
        Statement st = null;
        try {
            connection = MySqlDBConn.getConnection();
            st = connection.createStatement();           
            st.execute("INSERT INTO tb_result_fin"
			+" VALUES("+idEncuesta+","+ idOpcion + "," + idPregunta + ",'"+ usuario.getIdUsuario() + "','" + fecha +"')");
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MySqlDBConn.closeStatement(st);
            MySqlDBConn.closeConnection(connection);
        }
    
    }

    public Encuesta getEncuesta(Integer idEncuesta)
    {       
        Connection conn = null;
        Statement stm = null;
        ResultSet rs = null;

        Encuesta encuesta =null;

        // Preparar consulta
        String sql = "select a.id_enc, a.tit_enc, a.fec_ini_enc, a.fec_fin_enc, a.pob_enc from tb_encuesta a";

        // Ejecutar consulta
        try {
                conn = MySqlDBConn.getConnection();
                stm = conn.createStatement();
                rs = stm.executeQuery(sql);

                // obtener la lista
                if(rs.next()){

                    encuesta = new Encuesta();
                    encuesta.setIdEncuesta(Integer.parseInt(rs.getString(1)));
                    encuesta.setNombre(rs.getString(2));
                    encuesta.setFechaInicio(rs.getString(3));
                    encuesta.setFechaFin(rs.getString(4));
                    encuesta.setMuestra(Integer.parseInt(rs.getString(5)));
                    encuesta.setUbigeos(getDistritosPorEncuesta(idEncuesta));
                }
        } catch (Exception e) {
                e.printStackTrace();
        }
        finally {
                MySqlDBConn.closeResultSet(rs);
                MySqlDBConn.closeStatement(stm);
                MySqlDBConn.closeConnection(conn);
        }


         return encuesta;       
    }

    public List<Ubigeo> getDistritosPorEncuesta(Integer idEncuesta)
    {
            List<Ubigeo> listaUbigeos = new ArrayList<Ubigeo>();

            Connection conn = null;
            Statement stm = null;
            ResultSet rs = null;
            Ubigeo ubigeo =null;

            // Preparar consulta
            String sql = "select a.CodigoDistrito, b.NombreDistrito from tb_encxdist a, tb_distrito b"+
            "where a.CodigoDistrito = b.CodigoDistrito and a.id_enc =" + idEncuesta;

            // Ejecutar consulta
            try {
                    conn = MySqlDBConn.getConnection();
                    stm = conn.createStatement();
                    rs = stm.executeQuery(sql);

                    // obtener la lista
                    while(rs.next()){

                        ubigeo = new Ubigeo();
                        ubigeo.setCodDistrito(rs.getString(1));
                        ubigeo.setNomDistrito(rs.getString(2));
                    
                        listaUbigeos.add(ubigeo);

                    }
            } catch (Exception e) {
                    e.printStackTrace();
            }
            finally {
                    MySqlDBConn.closeResultSet(rs);
                    MySqlDBConn.closeStatement(stm);
                    MySqlDBConn.closeConnection(conn);
            }

         return listaUbigeos;
     }
}
