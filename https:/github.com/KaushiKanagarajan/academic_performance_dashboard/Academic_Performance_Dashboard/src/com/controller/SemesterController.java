package com.controller;

import com.model.SemesterResult;
import com.service.SemesterResultService;
import java.util.List;

public class SemesterController {

    public static void main(String[] args) {

        int userId = 1;

        SemesterResultService service = new SemesterResultService();
        List<SemesterResult> results = service.getResultsByUserId(userId);

        for(SemesterResult sr : results) {
            System.out.println("Subject: " + sr.getSubject());
            System.out.println("Internal 1: " + sr.getInternal1());
            System.out.println("Internal 2: " + sr.getInternal2());
            System.out.println("Semester Mark: " + sr.getSemesterMark());
            System.out.println("---------------------");
        }
    }
}
