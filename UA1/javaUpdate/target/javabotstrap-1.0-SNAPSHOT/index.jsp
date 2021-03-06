<%-- 
    Document   : index
    Created on : 14 jun. 2020, 00:28:05
    Author     : berenice
--%>

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
        stmt = conexion.prepareStatement("Select* from usuario");
        rs = stmt.executeQuery();
        //stmt=conexion.createStatement();
        //rs= stmt.executeQuery("select * from usuario");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>CRUD</title>
    </head>
    <body>
        <h1>Los registros en la base de datos son: </h1>
        <div class="container">
            <table class="table table-hover">
                <thead class="thead-dark">
                    <tr>
                        <td colspan="2"><h2>Usuarios</h2></td>
                        <td><link class="btn btn-success btn-block" href="formulariousuario.jsp"> Agregar usuario </td>
                    </tr>
                    <tr>
                        <th>#</th>
                        <th>Nombre</th>
                        <th>Contraseña</th>
                        <th># Telefono</th>
                    </tr>
                </thead>
                <tbody>
                    <%while (rs.next()) {%>
                    <tr>
                        <th scope="row"><%=rs.getInt("id_usuario")%></th>
                        <td><%=rs.getString("nombre")%></td>
                        <td><%=rs.getString("password")%></td>
                        <td><%=rs.getInt("phone")%></td>
                        <td><a class="btn btn-warning btn-block" href="formulariousuario.jsp?id=<%=rs.getInt("id_usuario")%>"/>Editar usuario</td>
                        <td><a class="btn btn-warning btn-block" href="eliminarusuario.jsp"/>Eliminar usuario</td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
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