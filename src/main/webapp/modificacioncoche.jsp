<%@ page language='java' contentType="text/html" %>

<%@page import="com.rgarmal.taller.model.Coche"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String matricula = request.getParameter("matricula");
    String marca = request.getParameter("marca");
    String modelo = request.getParameter("modelo");
    String color = request.getParameter("color");
    String revisado = request.getParameter("revisado");

    Coche coche = new Coche(matricula,marca,modelo,color,revisado);

    List<Coche> coches = (List) session.getAttribute("coches");

    coches.remove(coche);
    coches.add(coche);

    session.setAttribute("coches", coches);

    response.sendRedirect("coches.jsp");

%>