/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.dao;

import java.util.ArrayList;
import java.util.List;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Opcion;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Pregunta;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import pe.edu.upc.dew.proyectoencuestas.util.MySqlDBConn;
/**
 *
 * @author cramirez
 */
public class PreguntaDaoImpl implements PreguntaDao{
    
 public List<Pregunta> getPreguntasPorEncuesta(int idEncuesta)
 {
    List<Pregunta> preguntas = new ArrayList<Pregunta>();
    Connection connection = null;
    Statement st = null;
    ResultSet rs = null;
    Pregunta pregunta = null;

    try {
            connection = MySqlDBConn.getConnection();
            st = connection.createStatement();
            rs = st.executeQuery("select a.id_pre, a.des_pre, a.id_tip_pre, a.ord_pre from tb_pregunta a, tb_prexenc b where a.id_pre = b.id_pre and b.id_enc =" + idEncuesta);
           while(rs.next()){

                pregunta = new Pregunta();
                pregunta.setIdPregunta(rs.getInt("id_pre"));
                pregunta.setDescripcion(rs.getString("des_pre"));
                pregunta.setTipo(rs.getInt("id_tip_pre"));
                pregunta.setOrden(rs.getInt("ord_pre"));

                List<Opcion> opciones = getOpcionesPorPregunta(pregunta.getIdPregunta());
                pregunta.setOpciones(opciones);

                preguntas.add(pregunta);

            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {

            MySqlDBConn.closeResultSet(rs);
            MySqlDBConn.closeStatement(st);
            MySqlDBConn.closeConnection(connection);
        }

         return preguntas;
   
 }

 public List<Opcion> getOpcionesPorPregunta(int idPregunta)
 {
    List<Opcion> opciones = new ArrayList<Opcion>();

    Connection connection = null;
    Statement st = null;
    ResultSet rs = null;
    Opcion opcion = null;

    try {
            connection = MySqlDBConn.getConnection();
            st = connection.createStatement();
            rs = st.executeQuery("select a.id_opc, a.des_opc from tb_opcion a, tb_opcxpre b where a.id_opc = b.id_opc and b.id_pre =" + idPregunta);
           while(rs.next()){

                opcion = new Opcion();
                opcion.setIdOpcion(rs.getInt("id_opc"));
                opcion.setDescripcion(rs.getString("des_opc"));

                opciones.add(opcion);

            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {

            MySqlDBConn.closeResultSet(rs);
            MySqlDBConn.closeStatement(st);
            MySqlDBConn.closeConnection(connection);
        }


    return opciones;

 }

}
