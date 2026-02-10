package com.service;

import java.io.BufferedReader;
import java.io.FileReader;

public class CSVUserReader {

    public static boolean validate(String email, String password) {

        try (BufferedReader br = new BufferedReader(new FileReader("users.csv"))) {

            String line;
            while ((line = br.readLine()) != null) {

                if(line.toLowerCase().contains("email")) 
                    continue;

                String[] data = line.split(",");

                String csvEmail = data[0].trim();
                String csvPassword = data[1].trim();

                if (csvEmail.equals(email) && csvPassword.equals(password)) {
                    return true;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
