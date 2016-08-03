/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Controlador;

import java.sql.*;
/**
 *
 * @author hwongu
 */
public class Conexion {

    public static Connection getConexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost/bdsg";
            String usuario="root";
            String clave="oracle";
            return DriverManager.getConnection(url,usuario,clave);
        }catch(SQLException ex){
            ex.printStackTrace();
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return null;
    }

}
