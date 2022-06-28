/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;

/**
 *
 * @author TGDD
 */
public class StudentDBContext {

     public static ArrayList<Student> list() throws ClassNotFoundException, SQLException {
        Connection conn=Connect.jdbcConnection();
        Statement stm;
        stm = conn.createStatement();
        String sql = "Select * From Student";
        ResultSet rst;
        rst = stm.executeQuery(sql);
        ArrayList<Student> studentList = new ArrayList<>();
        while (rst.next()) {
            Student student = new Student(Integer.valueOf(rst.getString("id")), rst.getString("code"),rst.getString("displayname"));
           System.out.println(rst.getString("id") + " " + rst.getString("name") + " " + rst.getString("code"));
            studentList.add(student);
        }
        return studentList;
    }
//    public ArrayList<Student> list() {
//        ArrayList<Student> students = new ArrayList<>();
//        try {
//            String sql = "SELECT id,code,displayName FROM Student";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            ResultSet rs = stm.executeQuery();
//            while(rs.next())
//            {
//                Student s = new Student();
//                s.setId(rs.getInt("id"));
//                s.setCode(rs.getString("code"));
//                s.setName(rs.getString("displayName"));          
//                students.add(s);
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return students;
//    }

}
