<%-- 
    Document   : sipnup
    Created on : Jun 13, 2017, 11:22:44 AM
    Author     : ismayil
--%>

<%@page import="com.login.Result"%>
<%@page import="com.login.worker.SignupWorker"%>
<%@page import="com.login.SignUpData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            SignUpData usu = new SignUpData();
            usu.setFirst(request.getParameter("first"));
            usu.setLast(request.getParameter("last"));
            usu.setEmail(request.getParameter("email"));
            usu.setPassword(request.getParameter("password"));
            String result = SignupWorker.signup(usu);
            if (result.equals(Result.SUCCESS)) {
                response.sendRedirect("welcome.jsp");
            } else if (result.equals(Result.PROBLEM)) {
                response.sendRedirect("http://www.google.com");
            }else {
            response.sendRedirect("asd.jsp");
            }

        %>
    </body>
</html>
