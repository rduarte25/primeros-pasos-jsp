<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Objetos Predefinidos JSP</h2>
	
	Petición datos del navegador: <%= request.getHeader("User-Agent") %>
	
	<br>
	<br>
	
	Petición de Idioma Utilizado: <%= request.getLocale() %>
	
	<br>
	<br>
	
	
</body>
</html>