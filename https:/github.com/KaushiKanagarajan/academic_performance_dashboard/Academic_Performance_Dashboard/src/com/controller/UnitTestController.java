package com.controller;

import com.model.UnitTestResults;
import com.service.UnitTestService;
import java.util.List;

public class UnitTestController {

    public static void main(String[] args) {

        int userId = 1;

        UnitTestService service = new UnitTestService();
        List<UnitTestResults> results = service.getResultsByUserId(userId);

        for(UnitTestResults ut : results) {
            System.out.println("Subject: " + ut.getSubject());
            System.out.println("Unit: " + ut.getUnitNo());
            System.out.println("Topic: " + ut.getTopic());
            System.out.println("Attempt1: " + ut.getAttempt1());
            System.out.println("Attempt2: " + ut.getAttempt2());
            System.out.println("Attempt3: " + ut.getAttempt3());
            System.out.println("----------------------");
        }
    }
}
