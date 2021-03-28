<%-- 
    Document   : editar
    Created on : 28-03-2021, 10:50:17 AM
    Author     : YURIKIRA105
--%>
<%@page import="com.emergentes.modelo.Persona"%>
<%
    Persona reg = (Persona)request.getAttribute("miobjper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de Persona</h1>
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%= reg.getId() %>" size="2" readonly></td>
                </tr>
                <tr>
                    <td>Nombres</td>
                    <td><input type="text" name="nombres" value="<%= reg.getNombres() %>"></td>
                </tr>
                <tr>
                    <td>Apellido</td>
                    <td><input type="text" name="apellidos" value="<%= reg.getApellidos() %>"></td>
                </tr>
                <tr>
                    <td>Edad</td>
                    <td><input type="number" name="edad" value="<%= reg.getEdad() %>" size="3"</td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"</td>
                </tr>
            </table>
        </form>
    </body>
</html>
