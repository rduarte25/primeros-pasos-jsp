<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	
		String ciudad_favorita = "'"+request.getParameter("ciudad_favorita")+"'";
		
	
		Cookie laCookie = new Cookie("agencia_viajes.ciudad_favorita", ciudad_favorita);
		
		laCookie.setMaxAge(365*24*60*60);
		
		response.addCookie(laCookie);
		
		//response.addCookie(laCookie);
	
	%>
	<%=laCookie.getValue() %>
	
	Gracias por enviar la Cookie de tus preferencias.
	
	<a href="agencia_viajes.jsp">Ir a la página de la agencia</a>
	
	

</body>
</html>