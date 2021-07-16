<%@page import="rduarte.calculosmatematicos.Calculos"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	La suma de 5 y 7 es: <%= Calculos.metodoSuma(5, 7) %>
	
	<br>
	
	La resta de 5 y 7 es: <%= Calculos.metodoResta(5, 7) %>
	
	<br>
	
	La multiplicación de 5 y 7 es: <%= Calculos.metodoMultiplica(5, 7) %>

</body>
</html>