package pe.edu.upc.dew.proyectoencuestas.util;

/*
** Clase que permite la conexión a una BD
*/

import java.sql.*;

public class MySqlDBConn {

    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL_CONNECTION = "jdbc:mysql://localhost:3306/dbencuesta";

    public static Connection getConnection() {

        Connection connection = null;
        try {
            Class.forName(DRIVER).newInstance();
            connection = DriverManager.getConnection(URL_CONNECTION,"root","admin");
        } catch (Exception e) {
            throw new IllegalStateException("Error al obtener la conexión a la BD", e);
        }
        return connection;
    }


    
 
    public static void closeConnection(Connection connection) {
        try {
            if (connection != null) {
                connection.close();
            }
        }catch (SQLException e) {
            throw new IllegalStateException("Error al cerrar Connection", e);
        }
    }

    public static void closeStatement(Statement statement) {
        try {
            if (statement != null) {
                statement.close();
            }
        }catch (SQLException e) {
            throw new IllegalStateException("Error al cerrar Statement", e);
        }
    }

    public static void closeResultSet(ResultSet resultSet) {
        try {
            if (resultSet != null) {
                resultSet.close();
            }
        }catch (SQLException e) {
            throw new IllegalStateException("Error al cerrar resultset", e);
        }
    }
}
