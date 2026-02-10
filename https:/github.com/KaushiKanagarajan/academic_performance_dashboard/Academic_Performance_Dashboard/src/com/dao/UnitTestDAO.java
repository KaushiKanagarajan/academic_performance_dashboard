package com.dao;

import java.sql.*;
import java.util.*;
import com.db.DBConnection;
import com.model.UnitTestResults;

public class UnitTestDAO {

    public List<UnitTestResults> getResultsByUserId(int userId) {

        List<UnitTestResults> list = new ArrayList<>();

        try {
            Connection con = DBConnection.getConnection();
            String sql = "SELECT * FROM unit_test_results WHERE user_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();

            while(rs.next()) {
                UnitTestResults ut = new UnitTestResults();
                ut.setUserId(rs.getInt("user_id"));
                ut.setSubject(rs.getString("subject"));
                ut.setUnitNo(rs.getInt("unit_no"));
                ut.setTopic(rs.getString("topic"));
                ut.setAttempt1(rs.getInt("attempt1"));
                ut.setAttempt2(rs.getInt("attempt2"));
                ut.setAttempt3(rs.getInt("attempt3"));
                list.add(ut);
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
