package com.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.db.DBConnection;
import com.model.SemesterResult;

public class SemesterResultDAO {

    public List<SemesterResult> getResultsByUserId(int userId) {

        List<SemesterResult> list = new ArrayList<>();

        try {
            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM semester_results WHERE user_id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                SemesterResult sr = new SemesterResult();
                sr.setUserId(rs.getInt("user_id"));
                sr.setSubject(rs.getString("subject"));
                sr.setInternal1(rs.getInt("internal1"));
                sr.setInternal2(rs.getInt("internal2"));
                sr.setSemesterMark(rs.getInt("semester_mark"));
                list.add(sr);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}


