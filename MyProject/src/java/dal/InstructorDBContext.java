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
import model.Instructor;
import model.Student;

/**
 *
 * @author tuyennvhe150819
 */
public class InstructorDBContext extends DBContext {

    public Instructor checkInstructorExist(String email, String password, int cid) {
        try {
            String sql = "  SELECT i.[id]\n"
                    + "                       ,[email]\n"
                    + "                       ,[password]\n"
                    + "                       ,[displayName]\n"
                    + "			      ,[code]\n"
                    + "                       ,[imageUrl]\n"
                    + "                       ,i.[cid] as cid,c.name as cname\n"
                    + "                            FROM [dbo].[Instructor] i inner join Campus c on i.cid = c.id ";
                  

            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Instructor instructor = new Instructor(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getString(5), rs.getString(6));
                return instructor;
            }
        } catch (SQLException ex) {
            Logger.getLogger(InstructorDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Instructor getInstructorByCampus(int campus) {
        try {
            String sql = "select * from Instructor where cid = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, campus);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Instructor i = new Instructor(rs.getInt(1),
                        rs.getString(2), rs.getString(3), rs.getString(4));
                return i;
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Instructor getInstructorByID(int id) {
        try {
            String sql = "select * from Instructor where id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Instructor i = new Instructor(rs.getInt(1),
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
                         rs.getString(6));
                return i;
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
