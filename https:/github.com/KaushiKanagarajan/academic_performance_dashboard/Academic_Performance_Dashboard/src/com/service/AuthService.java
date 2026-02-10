package com.service;

import com.dao.UserDAO;

public class AuthService {
    UserDAO dao = new UserDAO();

    public boolean login(String email, String password) {
        return dao.login(email, password) != null;
    }

}
