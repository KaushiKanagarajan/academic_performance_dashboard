package com.service;

import com.dao.UnitTestDAO;
import com.model.UnitTestResults;
import java.util.List;

public class UnitTestService {

    UnitTestDAO dao = new UnitTestDAO();

    public List<UnitTestResults> getResultsByUserId(int userId) {
        return dao.getResultsByUserId(userId);
    }
}
