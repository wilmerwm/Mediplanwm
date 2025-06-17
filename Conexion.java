/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datos;

import java.sql.*;
import org.apache.commons.dbcp2.BasicDataSource;
import javax.sql.DataSource;

/**
 *
 * @author Sebastian
 */
public class Conexion {
    
    // Credenciales conexión a la base de datos
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/fitoterapia?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
    //private static final String JDBC_USER = "root";
    private static final String JDBC_USER = "appuser";
    private static final String JDBC_PASSWORD = "12345678";
    
    private static BasicDataSource dataSource;
    
    public static DataSource getDataSource(){ 

        //Método que devuelve un objeto de tipo BasicDataSource con las credenciales           
        //necesarias para realizar la conexion a la base de datos
        if(dataSource == null){
            
            dataSource = new BasicDataSource();
            dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
            dataSource.setUrl(JDBC_URL);
            dataSource.setUsername(JDBC_USER);
            dataSource.setPassword(JDBC_PASSWORD);
            dataSource.setInitialSize(50); // Pull de conexiones, 50 conexiones de manera inicial
        }

        return dataSource;
    }
    
    public static Connection getConnection() throws SQLException{
        //Metodo que devuelve la conexión a la base de datos a partir del pull de conexiones
        //que se configuró en el metido getDataSource()
        return getDataSource().getConnection();
    }
    
    public static void close(ResultSet rs){
        //Metodo para cerrar objeto ResultSet
        try {
            rs.close();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
    }
    
    public static void close(PreparedStatement stmt){
        //Metodo para cerrar objeto PreparedStatement
        try {
            stmt.close();    
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }        
    }
    
    public  static void close(Connection conn){
        //Metodo para cerrar objeto Connection
        try {
            conn.close();
        } catch (SQLException ex) {
             ex.printStackTrace(System.out);
        }
    }
    
}
