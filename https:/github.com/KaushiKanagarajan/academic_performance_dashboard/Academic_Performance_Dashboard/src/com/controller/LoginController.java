package com.controller;

import com.service.AuthService;

public class LoginController {
    public static void main(String[] args) {

        String email = "rohan.ct23@bitsathy.ac.in";
        String password = "1313";

        AuthService auth = new AuthService();
        boolean result = auth.login(email, password);

        if(result)
            System.out.println("Valid login");
        else
            System.out.println("Invalid login");
    }
}
