/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author TGDD
 */
public abstract class DBContext {

    protected Connection connection;
    
          public DBContext(){
        try {
            String user = "tuyen2k1";
            String pass = "123456";
            String url = "jdbc:sqlserver://DESKTOP-RB62PPH\\TUYEN2K1:1433;databaseName=Attendance_Assignment_PRJ301";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
