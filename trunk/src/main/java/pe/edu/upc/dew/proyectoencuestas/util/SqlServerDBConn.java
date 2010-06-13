
package pe.edu.upc.dew.proyectoencuestas.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/*
** Clase que permite la conexión a una BD
*/

import java.sql.*;

public class SqlServerDBConn {

	static {
		try {
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			//Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
		} catch (Exception e) {
			System.out.println(
				"Proyecto: "
					+ "SPMR"
					+ "; Clase: "
					+ "com.cibertec.util.SqlServerDBConn"
					+ "; Mensaje:"
					+ e);

		}
	}
	


	/**
	 * Obtiene una conexión a la Base de Datos.
	 */
	public Connection getConnection() {

		Connection connection = null;
		try {
			System.out.println("antes de conectar");
			//connection =DriverManager.getConnection("jdbc:microsoft:sqlserver://localhost:1433;DatabaseName=sql","sql","sql");
			connection =DriverManager.getConnection("jdbc:odbc:SPMR","sa","sa");
			
			
			System.out.println("despues de conectar");
		} catch (Exception e) {
			System.out.println(
				"Proyecto: "
					+ "SPMR"
					+ "; Clase: "
					+ getClass().getName()
					+ "; Mensaje:"
					+ e);

		}
		
		return connection;
	}
	
	
	
}

