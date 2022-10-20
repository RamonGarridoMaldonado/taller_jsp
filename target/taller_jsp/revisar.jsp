<%@ page language='java' contentType="text/html" %>

<%@page import="com.rgarmal.taller.model.Coche"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String matricula = request.getParameter("matricula");
    List<Coche> coches = (List) session.getAttribute("coches");

    for (Coche coche : coches) {
        if (coche.getMatricula().equals(matricula)) {
            if (coche.getRevisado() == "N") {
                coche.setRevisado("S");
            } else {
                coche.setRevisado("N");
            }
        }
    }

    session.setAttribute("coches", coches);

    response.sendRedirect("coches.jsp");

%>