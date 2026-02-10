package com.controller;

import com.model.StudentProfile;
import com.service.StudentProfileService;

public class DashboardController {

    public static void main(String[] args) {

        int userId = 1; 

        StudentProfileService service = new StudentProfileService();
        StudentProfile sp = service.getProfileByUserId(userId);

        if(sp != null) {
            System.out.println("Register No: " + sp.getRegisterNo());
            System.out.println("SGPA: " + sp.getSgpa());
            System.out.println("CGPA: " + sp.getCgpa());
            System.out.println("Attendance: " + sp.getAttendance());
            System.out.println("Leave Count: " + sp.getLeaveCount());
        } else {
            System.out.println("Profile not found");
        }
    }
}
