<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String usuario = "";
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/usuarios", "root", "");
        stmt = conexion.prepareStatement("UPDATE usuario SET nombre=? phone=? WHERE id_usuario=?");
        stmt.setString(1, request.getParameter("nombre"));
        stmt.setInt(2, Integer.parseInt(request.getParameter("id_usuario")));
        stmt.setString(3, request.getParameter("phone"));
        stmt.executeUpdate();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>editarusuario</title>
    </head>
    <body>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
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