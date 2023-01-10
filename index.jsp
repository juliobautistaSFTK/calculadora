<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
float resultado = 0;
float num1 = 0;
float num2 = 0;

if (request.getMethod() == "POST") {
	num1 = Float.parseFloat(request.getParameter("num1"));
	num2 = Float.parseFloat(request.getParameter("num2"));
	
	if(request.getParameter("sumar") != null) {
		resultado = num1 + num2;
	} else if (request.getParameter("restar") != null) {
		resultado = num1 - num2;
	} else if (request.getParameter("multiplicar") != null) {
		resultado = num1 * num2; 
	} else if (request.getParameter("dividir") != null) {
			resultado = num1 / num2;
		}
}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculadora</title>
</head>
<body>
	<h1>Calculadora_sonar docker visto desde sample2 7:16</h1>
	<form method="post">
	Primer Numero:<br />
	<input type="number" required name="num1" value="<%= num1 %>" /><br />
	Segundo Numero:<br />
	<input type="number" required name="num2" value="<%= num2 %>"/><br />
	<input type="submit" value="Sumar" name="sumar" />
	<input type="submit" value="Restar" name="restar" />
	<input type="submit" value="Multiplicar" name="multiplicar" />
	<input type="submit" value="Dividir" name="dividir" />
	<br /><br />
	Resultado sonar Dockert tomc desde sample2:<%=resultado%>
	</form>

</body>
</html>
