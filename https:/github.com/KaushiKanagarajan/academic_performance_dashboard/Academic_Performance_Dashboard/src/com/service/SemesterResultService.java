package com.service;

import java.util.List;
import com.dao.SemesterResultDAO;
import com.model.SemesterResult;

public class SemesterResultService {

    SemesterResultDAO dao = new SemesterResultDAO();

    public List<SemesterResult> getResultsByUserId(int userId) {
        return dao.getResultsByUserId(userId);
    }
}
