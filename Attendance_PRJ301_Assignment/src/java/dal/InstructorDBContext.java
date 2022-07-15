/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

/**
 *
 * @author TGDD
 */
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Campus;
import model.Instructor;

public class InstructorDBContext extends DBContext {


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

}