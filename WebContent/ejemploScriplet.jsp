<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>Ejemplo Scriptlet</h1>

		<%

			for (int i = 0; i < 10; i++) {
				out.println("<br>Este el es mensaje " + i);
			}

		%>
	</body>
</html>