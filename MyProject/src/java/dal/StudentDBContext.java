/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;
import model.Instructor;

public class StudentDBContext extends DBContext {

    public Student checkStudentExist(String email, String password) {
        try {
            String sql = "SELECT s.[id]\n"
                    + "                    ,[email]\n"
                    + "                    ,[password]\n"
                    + "                   ,[displayName]\n"
                    + "                   ,[code]\n"
                    + "                   ,[imageUrl]\n"
                    + "                          ,s.[cid] as cid,c.name as cname\n"
                    + "                    FROM [dbo].[Student] s inner join Campus c on s.cid = c.id";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Student student = new Student(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
                         rs.getString(5), rs.getString(6));
                return student;
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }


    public ArrayList<Student> getAllStudentByGroupId(int gid) {
        ArrayList<Student> list = new ArrayList<>();
        try {
            String sql = "select Student.* from [Group] join Student_Group on [Group].id = Student_Group.gid\n"
                    + "  join Student on Student.id = Student_Group.suid where  [Group].id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, gid);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {          
                Student s = new Student(rs.getInt(1),
                         rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(6),rs.getString(7));
                list.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public ArrayList list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Object get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Object model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Object model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Object model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
