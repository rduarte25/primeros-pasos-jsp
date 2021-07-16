<%@page import = "java.sql.Connection" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import= "java.sql.SQLException" %>
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
	
		String nombre = request.getParameter("nombre");
	
		String apellido = request.getParameter("apellido");
	
		String usuario = request.getParameter("usuario");
	
		String contra = request.getParameter("contra");
		
		String pais = request.getParameter("pais");
		
		String tecno = request.getParameter("tecnologias");
		
		try {
			
	
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "");
		
			Statement consulta = miConexion.createStatement();
			
			String SQL1 = "INSERT INTO usuarios (id, nombre, apellido, usuario, contrasena, pais, tecnologia) VALUES (NULL, '"+nombre+"', '"+apellido+"', '"+usuario+"', '"+contra+"', '"+pais+"', '"+tecno+"')";
			
			consulta.executeUpdate(SQL1);
			
			out.println("Registrado con exito");
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	%>

</body>
</html>