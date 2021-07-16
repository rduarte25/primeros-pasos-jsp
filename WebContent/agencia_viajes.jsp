<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1 style="text-align:center">Agencia de viajes</h1>	

	<%
	
		String ciudad_favorita = "San Carlos";
		
		Cookie[] lasCookies = request.getCookies();
		
		if (lasCookies != null) {
			
			for(Cookie cookieTemp: lasCookies) {
				if ("agencia_viajes.ciudad_favorita".equals(cookieTemp.getName())) {
					ciudad_favorita = cookieTemp.getValue();
					break;
				}
			}
			
		}
	
	
	%>

	<h3>Vuenos a <%= ciudad_favorita %></h3>
	
	<p>Estoe es un ejemplo de texto</p>
	<p>Estoe es un ejemplo de texto</p>
	<p>Estoe es un ejemplo de texto</p>
	<p>Estoe es un ejemplo de texto</p>	
	
	<h3>Hoteles en <%= ciudad_favorita %></h3>
	
	<p>Estoe es un ejemplo de texto</p>
	<p>Estoe es un ejemplo de texto</p>
	<p>Estoe es un ejemplo de texto</p>
	<p>Estoe es un ejemplo de texto</p>

	<h3>Descuentos en restaurantes de <%= ciudad_favorita %></h3>
	
	<p>Estoe es un ejemplo de texto</p>
	<p>Estoe es un ejemplo de texto</p>
	<p>Estoe es un ejemplo de texto</p>
	<p>Estoe es un ejemplo de texto</p>

</body>
</html>