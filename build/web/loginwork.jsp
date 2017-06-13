<%-- 
    Document   : login
    Created on : Jun 13, 2017, 2:43:51 PM
    Author     : ismayil
--%>

<%@page import="com.login.Result"%>
<%@page import="com.login.worker.LoginWorker"%>
<%@page import="com.login.LoginData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        LoginData ld = new LoginData();
        ld.setEmail(request.getParameter("email"));
        ld.setPassword(request.getParameter("password"));
        String result = LoginWorker.loginCheck(ld);
        if(result.equals(Result.SUCCESS)){
        response.sendRedirect("welcome.jsp");
        }else if (result.equals(Result.ACCESS)){
        response.sendRedirect("index.jsp");
        }
        


        

        %>
    </body>
    
</html>
