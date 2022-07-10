
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Course;
import model.Group;
import model.Instructor;

public class GroupDBContext extends DBContext{

    Group getGroupById(int id) {
        try {
            String sql = "SELECT [id]\n"
                    + "      ,[name]\n"
                    + "      ,[csid]\n"
                    + "      ,[iid]\n"
                    + "  FROM [dbo].[Group] where id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                Course c = new CourseDBContext().getCourseById(rs.getInt(3));
                Instructor instructor = new InstructorDBContext().getInstructorByID(rs.getInt(4));
               return new Group(rs.getInt(1),rs.getString(2),c,instructor);
            }
        } catch (SQLException ex) {
            Logger.getLogger(GroupDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
