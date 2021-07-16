
<%@page import= "java.sql.Connection" %>
<%@page import=	"java.sql.Statement"%>
<%@page import=	"java.sql.DriverManager"%>
<%@page import= "java.sql.SQLException" %>
<%@page import= "java.sql.PreparedStatement" %>
<%@page import= "java.sql.ResultSet" %>
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
		String usuario = request.getParameter("usuario");
	
		String contra = request.getParameter("contra");
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "");
		
			String SQL1 = "SELECT * FROM usuarios WHERE usuario=? AND contrasena=?";
			
			PreparedStatement consultaPreparada = miConexion.prepareStatement(SQL1);
			
			consultaPreparada.setString(1,usuario);
			
			consultaPreparada.setString(2,contra);
			
			ResultSet resultadoConsulta = consultaPreparada.executeQuery();
			
			if (resultadoConsulta.absolute(1)) {
				out.println("Consulta Exitosa");
			} else {
				out.println("No existe usuario");
			}
			
			
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	%>

</body>
</html>