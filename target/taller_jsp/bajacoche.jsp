<<%@ page language='java' contentType="text/html" %>

<%@page import="com.rgarmal.taller.model.Coche"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String matricula = request.getParameter("matricula");

    Coche coche = new Coche();
    coche.setMatricula(matricula);

    List<Coche> coches = (List) session.getAttribute("coches");

    coches.remove(coche);

    session.setAttribute("coches", coches);

    response.sendRedirect("coches.jsp");

%>