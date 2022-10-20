<%@ page language='java' contentType="text/html" %>

<%@page import="com.rgarmal.taller.model.Coche"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de coches</title>

    <style>
        table, th, td {
        border: 1px solid;
        }
    </style>

</head>
<body>
    <h2>coches</h2>
    <table>
        <tr>
            <th>matricula</th>
            <th>marca</th>
            <th>modelo</th>
            <th>color</th>
            <th>revisado</th>

            <th colspan="3"><a href="nuevocoche.jsp">Nuevo</a></th>
        </tr>
            <%

                List<Coche> coches = (List) session.getAttribute("coches");

                for(Coche coche: coches) {
                    out.print("<tr>");
                    out.print("<td>" + coche.getMatricula() + "</td>");
                    out.print("<td>" + coche.getMarca() + "</td>");
                    out.print("<td>" + coche.getModelo() + "</td>");
                    out.print("<td>" + coche.getColor() + "</td>");
                    out.print("<td>" + coche.getRevisado() + "</td>");
                    out.print("<td><a href=\"revisar.jsp?matricula=" + coche.getMatricula()+ "\">revisar</a></td>");
                    out.print("<td><a href=\"modificarcoche.jsp?matricula=" + coche.getMatricula() + "\">editar</a></td>");
                    out.print("<td><a href=\"bajacoche.jsp?matricula=" + coche.getMatricula() + "\">eliminar</a></td>");
                    out.print("</tr>");
                }
            %>
    </table>

    <%
        out.print("<td><a href=\"eliminartodos.jsp\">eliminar todos</a></td>");
    %>
</body>
</html>