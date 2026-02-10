package com.model;

public class StudentProfile {

    private int userId;
    private String registerNo;
    private double sgpa;
    private double cgpa;
    private int attendance;
    private int leaveCount;

    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }

    public String getRegisterNo() { return registerNo; }
    public void setRegisterNo(String registerNo) { this.registerNo = registerNo; }

    public double getSgpa() { return sgpa; }
    public void setSgpa(double sgpa) { this.sgpa = sgpa; }

    public double getCgpa() { return cgpa; }
    public void setCgpa(double cgpa) { this.cgpa = cgpa; }

    public int getAttendance() { return attendance; }
    public void setAttendance(int attendance) { this.attendance = attendance; }

    public int getLeaveCount() { return leaveCount; }
    public void setLeaveCount(int leaveCount) { this.leaveCount = leaveCount; }
}
