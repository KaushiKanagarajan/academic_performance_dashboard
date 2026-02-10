package com.dao;

import java.sql.*;
import com.db.DBConnection;
import com.model.StudentProfile;

public class StudentProfileDAO {

    public StudentProfile getProfileByUserId(int userId) {

        StudentProfile sp = null;

        try {
            Connection con = DBConnection.getConnection();
            String sql = "SELECT * FROM student_profile WHERE user_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();

            if(rs.next()) {
                sp = new StudentProfile();
                sp.setUserId(rs.getInt("user_id"));
                sp.setRegisterNo(rs.getString("register_no"));
                sp.setSgpa(rs.getDouble("sgpa"));
                sp.setCgpa(rs.getDouble("cgpa"));
                sp.setAttendance(rs.getInt("attendance"));
                sp.setLeaveCount(rs.getInt("leave_count"));
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
        return sp;
    }
}
