/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

/**
 *
 * @author TGDD
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect {
    public Connect(){
        
    }
    //gọi 1 cơ sở dữ liệu mysql
    public static Connection jdbcConnection(){
        String url="jdbc:sqlserver://DESKTOP-RB62PPH\\TUYEN2K1:1433;databaseName=Attendance_Assignment_PRJ301";
        String user="tuyen2k1";
        String password = "123456";
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            return DriverManager.getConnection(url, user, password);
        }catch(ClassNotFoundException e){
            System.out.println(e);
        }catch(SQLException e){
            System.out.println(e);
        }
        return null;
    }
}