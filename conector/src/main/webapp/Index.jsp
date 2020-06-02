<%-- 
    Document   : Index
    Created on : 29-may-2020, 8:58:29
    Author     : bere
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
    Statement stmt = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost", "usuarios", "");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("Select * from usuario");
    } catch (Exception e) {
        out.println("Error" + e);
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
