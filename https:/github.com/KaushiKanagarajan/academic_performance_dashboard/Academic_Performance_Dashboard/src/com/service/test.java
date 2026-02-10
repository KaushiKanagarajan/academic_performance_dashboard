package com.service;
import com.model.SemesterResult;
import java.util.List;
public class test {
	public static void main(String[] args) {

        SemesterResultService service = new SemesterResultService();

        int userId = 1; // test user
        List<SemesterResult> results =
                service.getResultsByUserId(userId);

        System.out.println("Total records: " + results.size());

        for (SemesterResult sr : results) {
            System.out.println(sr.getSubject()
                    + " - " + sr.getSemesterMark());
        }
    }
}
