<%@ page language='java' contentType="text/html" %>

<%@page import="com.rgarmal.taller.model.Coche"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
  Coche coche = new Coche("Matricula1","Marca1","Modelo1","Color1","S");
  Coche coche1 = new Coche("Matricula2","Marca2","Modelo2","Color2","N");
  Coche coche2 = new Coche("Matricul3","Marca3","Modelo3","Color3","S");

  List<Coche> coches = new ArrayList<Coche>();
  coches.add(coche);
  coches.add(coche1);
  coches.add(coche2);

  session.setAttribute("coches", coches);
%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Taller</title>
</head>
<body>
<h1>Taller</h1>
<p><a href="coches.jsp">Coches</a></p>
</body>
</html>