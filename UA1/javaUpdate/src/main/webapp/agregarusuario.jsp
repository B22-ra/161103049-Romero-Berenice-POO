<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/usuarios", "root", "");
        stmt = conexion.prepareStatement("INSERT INTO usuario SET nombre=? password=? phone=?");
        stmt.setString(1, request.getParameter("nombre"));
        stmt.setString(2, request.getParameter("password"));
        stmt.setString(3, request.getParameter("phone"));
        out.println(stmt.executeUpdate());
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Agregar Usuario</title>
    </head>
    <body>
        <div class="container"> 
            <form action="index.jsp"  method="POST" class="form">
                <input class="btn btn-success btn-block btn-lg" type="submit" value="Regresar"/>
            </form>
        </div>
    </body>
</html>
<%} catch (SQLSyntaxErrorException e) {
        switch (e.getErrorCode()) {
            case 1049:
                out.println("<b>ERROR SQL: </b> La base de datos no existe");
                break;
            case 1146:
                out.println("<b>ERROR SQL: </b> La tabla no existe");
                break;
            default:
                out.println("<b>ERROR SQL:</b>" + e.getMessage());
                out.println("<b>ERROR SQL:</b>" + e.getErrorCode());
        }
    }%>