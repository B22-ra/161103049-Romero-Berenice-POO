<%-- 
    Document   : Index
    Created on : 04-jun-2020, 18:25:02
    Author     : bere
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="Clases.Controlador"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Libros</title>
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
    <body style="background-color:mediumslateblue;">
        <%
            Controlador ct = new Controlador();
            ResultSet rs;
            rs = ct.DevolverRegistro("select *from libro");
        %>
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
        </form>
    </body>
</html>
