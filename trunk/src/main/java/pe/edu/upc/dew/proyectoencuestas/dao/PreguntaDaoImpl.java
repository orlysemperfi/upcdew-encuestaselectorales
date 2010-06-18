/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.dao;

import java.util.ArrayList;
import java.util.List;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Opcion;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Pregunta;

/**
 *
 * @author cramirez
 */
public class PreguntaDaoImpl implements PreguntaDao{
    
 public List<Pregunta> getPreguntasPorEncuesta(int idEncuesta)
 {
    List<Pregunta> preguntas = new ArrayList<Pregunta>();

    Pregunta pregunta1 = new Pregunta();
    pregunta1.setIdPregunta(1);
    pregunta1.setDescripcion("Si las elecciones fueran mañana, ¿por quién votaría usted para la alcaldía de Lima?");

    Pregunta pregunta2 = new Pregunta();
    pregunta2.setIdPregunta(2);
    pregunta2.setDescripcion("Independientemente de sus preferencias políticas, ¿cuáles considera que son los PRINCIPALES OBJETIVOS que debería tener el futuro alcalde de Lima o la futura alcaldesa de Lima? ");

    Pregunta pregunta3 = new Pregunta();
    pregunta3.setIdPregunta(3);
    pregunta3.setDescripcion("Independientemente de sus preferencias políticas, ¿cuál de los siguientes candidatos municipales considera usted que está MÁS CAPACITADO(a) para... ? ");
    
    Pregunta pregunta4 = new Pregunta();
    pregunta4.setIdPregunta(4);
    pregunta4.setDescripcion("Independientemente de sus preferencias políticas, de la siguiente lista, ¿cuáles son las DOS CUALIDADES que según usted caracterizan mejor a? ? Respuestas múltiples");
    
    preguntas.add(pregunta1);
    preguntas.add(pregunta2);
    preguntas.add(pregunta3);
    preguntas.add(pregunta4);
    
    return preguntas;

 }

 public List<Opcion> getOpcionesPorPregunta(int idPregunta)
 {
    List<Opcion> opciones = new ArrayList<Opcion>();

    if (idPregunta == 1)
    {
        Opcion opcion1 = new Opcion();
        opcion1.setIdOpcion(1);
        opcion1.setDescripcion("Alexander Kouri");

        Opcion opcion2 = new Opcion();
        opcion2.setIdOpcion(2);
        opcion2.setDescripcion("Lourdes Flores");

        Opcion opcion3 = new Opcion();
        opcion3.setIdOpcion(3);
        opcion3.setDescripcion("Fernando Andrade");

        Opcion opcion4 = new Opcion();
        opcion4.setIdOpcion(4);
        opcion4.setDescripcion("Susana Villarán");
    }

    return opciones;
 }

//      public  ArrayList<Pregunta>  ObtenerListadoPreguntas()
//	throws SQLException, NamingException{
//		Connection conn = null;
//		PreparedStatement stm = null;
//		ResultSet rs = null;
//		ArrayList preguntas = new ArrayList();
//                 Pregunta pregunta =null;
//
//		// Preparar consulta
//		String sql = "select a.id_pre, a.des_pre,c.des_opc from tb_pregunta a , tb_opcxpre b, tb_opcion c "+
//                             "where a.id_pre=b.id_pre and b.id_opc=c.id_opc; ";
//
//		// Ejecutar consulta
//		try {
//			conn =getConnection();
//			stm = conn.prepareStatement(sql);
//			rs = stm.executeQuery();
//
//			// obtener la lista
//			while(rs.next()){
//                            System.out.print("Preguntasssss"+ rs.getString(3) +"\n");
//
//                            pregunta= new Pregunta();
//                            pregunta.setIdPregunta(Integer.parseInt(rs.getString(1)));
//                            pregunta.setDescripcion(rs.getString(2));
//                            preguntas.add(pregunta);
//
//
//			}
//		} finally {
//			rs.close();
//                        stm.close();
//                        conn.close();
//		}
//
//		return preguntas;
//	}
//
//
//    public String GenerarCodigo()throws Exception {
//
//	String codigo = null;
//        Connection conn = null;
//	Statement stm = null;
//	ResultSet rst = null;
//
//	try {
//            String sql;
//            sql = "select  NombreDistrito as Valor  from tb_distrito;";
//            conn = getConnection();
//            stm = conn.createStatement();
//            rst = stm.executeQuery(sql);
//
//            while (rst.next()) {
//                codigo = rst.getString(1);
//                                            }
//            rst.close();
//            stm.close();
//            conn.close();
//
//            System.out.println("OBTENIENDO CODIGO"+codigo);
//
//            if (codigo == null)
//                codigo = "U00001";
//            else
//                codigo = "U" + codigo;
//
//	} catch (SQLException e) {
//            e.printStackTrace();
//            codigo = "U00000";
//	}
//	  return codigo;
//    }
//
//
//    //Para obtener una conexion.
//    private Connection getConnection() {
//
//            MySqlDBConn cnx = new MySqlDBConn();
//            return cnx.getConnection();
//    }

}
