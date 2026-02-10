package com.model;

public class SemesterResult {

    private int userId;
    private String subject;
    private int internal1;
    private int internal2;
    private int semesterMark;

    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }

    public String getSubject() { return subject; }
    public void setSubject(String subject) { this.subject = subject; }

    public int getInternal1() { return internal1; }
    public void setInternal1(int internal1) { this.internal1 = internal1; }

    public int getInternal2() { return internal2; }
    public void setInternal2(int internal2) { this.internal2 = internal2; }

    public int getSemesterMark() { return semesterMark; }
    public void setSemesterMark(int semesterMark) { this.semesterMark = semesterMark; }
}
