package pe.edu.upc.dew.proyectoencuestas.util;

/*
** Clase que permite la conexión a una BD
*/

import java.sql.*;

public class MySqlDBConn {

	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");

		} catch (Exception e) {
			System.out.println(
				"Proyecto: "
					+ Parametros.S_APP_NOMBRE
					+ "; Clase: "
					+ "edu.plantilla.util.MySqlDBConn"
					+ "; Mensaje:"
					+ e);

		}
	}

	/**
	 * Obtiene una conexión a la Base de Datos.
	 */
	public static Connection getConnection() {

		Connection connection = null;
		try {

			connection =
			DriverManager.getConnection("jdbc:mysql://localhost:3306/dbencuesta","root","root");

		} catch (Exception e) {
			System.out.println(
				"Proyecto: "
					+ Parametros.S_APP_NOMBRE
					+ "; Clase: "
					//+ getClass().getName()
					+ "; Mensaje:"
					+ e);

		}
		return connection;
	}

    public static void closeConnection(Connection connection) {
        try {
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public static void closeStatement(Statement statement) {
        try {
            if (statement != null) {
                statement.close();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public static void closeResultSet(ResultSet resultSet) {
        try {
            if (resultSet != null) {
                resultSet.close();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
