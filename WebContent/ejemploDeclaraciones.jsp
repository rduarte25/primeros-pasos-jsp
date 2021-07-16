<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 style="text-align:center"> Ejemplo Declaraciones</h1>
	<%!
	
	private int resultado;
	
	public int metodoSuma (int num_1, int num_2) {
		resultado = num_1 + num_2;
		return resultado;
	}
	
	public int metodoResta (int num_1, int num_2) {
		resultado = num_1 - num_2;
		return resultado;
	}
	
	public int metodoMultiplica (int num_1, int num_2) {
		resultado = num_1 * num_2;
		return resultado;
	}
	
	
	%>
	
	El resultado de la suma es: <%= metodoSuma(2, 2)%>
	
	<br>
	
	El resultado de la resta es: <%= metodoResta(2, 2)%>
	
	<br>
	
	El resultado de la multiplicacion es: <%= metodoMultiplica(2, 2)%>
	
</body>
</html>