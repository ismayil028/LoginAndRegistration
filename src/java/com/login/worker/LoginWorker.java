/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login.worker;

import com.login.LoginData;
import com.login.Result;
import com.login.database.DatabaseQosulma;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ismayil
 */
public class LoginWorker {
 public static String loginCheck (LoginData a){
 String result= "";
     try {
         Statement stmt = DatabaseQosulma.getStatement();
         String query = "select email,password from user where email='" +a.getEmail()+"' and password='" +a.getPassword()+"';";
         ResultSet rs =  stmt.executeQuery(query);
         if(rs.next()){
                 result=Result.SUCCESS;
                 }else  {
             result = Result.ACCESS;
                 }
     } catch (SQLException e) {
         result= Result.FAILURE;
     }
 
 
 return result;
 }
}
