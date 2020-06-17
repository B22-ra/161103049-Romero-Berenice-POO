<%-- 
    Document   : Index
    Created on : 29-may-2020, 8:58:29
    Author     : bere
--%>
<%@page import="java.sql.*"
        import="java.sql.Connection"
        import="java.sql.DriverManager"
        import="java.sql.PreparedStatement"
        import="java.sql.ResultSet"
        import="java.sql.SQLException"
        import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
    Statement stmt = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost", "libros", "");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("Select * from libro");
    } catch (Exception e) {
        out.println("Error" + e);
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table {
                width:100%;
            }
            table, th, td {
                border: 1px solid lightcoral;
                border-collapse: collapse;
            }
            th, td {
                padding: 15px;
                text-align: left;
            }
            table#t01 tr:nth-child(even) {
                background-color: #eee;
            }
            table#t01 tr:nth-child(odd) {
                background-color: #fff;
            }
            table#t01 th {
                background-color: lightcoral;
                color: lightgrey;
                font-family: impact;
            }
        </style>
    </head>
    <body>
        <h1 style="text-align:center; font-family:impact; color: Lightgrey;">CRUD de Libros.</h1>
        <form>
            <table id="t01">
                <tr>
                    <th>ID</th>
                    <th>Titulo</th> 
                    <th>Autor</th>
                    <th>Editorial</th>
                    <th>Año</th>
                    <th>Formato</th>
                    <th>Precio</th>
                </tr>
                <%
                    while (rs.next()) {
                %>
                <tr>
                    <td><%=rs.getInt(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getInt(4)%></td>
                    <td><%=rs.getInt(5)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><%=rs.getFloat(7)%></td>
                </tr>
                <%}%>
            </table>
    </body>
</html>
