/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;


import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author riski
 */
public class DB_Connection {
    private Connection conn = null;
    
    public DB_Connection(){
        String URL = "jdbc:mysql://localhost:3306/antrianonline";
        String USER = "root";
        String PASS = "";
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            this.conn = DriverManager.getConnection(URL, USER, PASS);
        }catch (Exception ex){
            
        }
    }

    public Connection getConn() {
        return this.conn;
    }
    
    
    
}
