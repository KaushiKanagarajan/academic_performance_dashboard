package com.service;

import com.dao.StudentProfileDAO;
import com.model.StudentProfile;

public class StudentProfileService {

    StudentProfileDAO dao = new StudentProfileDAO();

    public StudentProfile getProfileByUserId(int userId) {
        return dao.getProfileByUserId(userId);
    }
}
