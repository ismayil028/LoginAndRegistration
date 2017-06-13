/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login.worker;

import com.login.database.DatabaseQosulma;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.login.*;

/**
 *
 * @author ismayil
 */
public class SignupWorker {

    public static String signup(SignUpData usu) {
        String result = "";
        try {
            String query = "insert into user(first,last,email,password) values(?,?,?,?);";
            PreparedStatement ps = DatabaseQosulma.getPreparedStatement(query);
            ps.setString(1, usu.getFirst());
            ps.setString(2, usu.getLast());
            ps.setString(3, usu.getEmail());
            ps.setString(4, usu.getPassword());

             int i = ps.executeUpdate();
            
            if (i == 1) {
                result = Result.SUCCESS;
            } else {
                result = Result.PROBLEM;
            }
        } catch (SQLException e) {
            e.getMessage();
            result = Result.FAILURE;
            
        }

        return result;
    }

}
