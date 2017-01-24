<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Html request parameters</title>
</head>
<body>
	/*ff zien of da hier macheert*/
<h3>Kies een lector</h3>
<form method="post">
<input type="checkbox" name="lector" value="Possemiers Philippe">Possemiers Philippe
<input type="checkbox" name="lector" value="Coutrin Olga">Coutrin Olga
<input type="checkbox" name="lector" value="Casal Kelly">Casal Kelly
<br/><br/>
<input type="submit" value="Kies">
</form>

<%
String[] lectors = request.getParameterValues("lector");
if(lectors != null){
%>
	<h3>U hebt volgende lectoren geslecteerd :</h3>
	<ul>	
<%	
	for (String l :lectors){ 
%>	
	<li> <%= l %></li>
<%	
	}
%>	
	</ul>	
	<a href=" <%= request.getRequestURI() %>">Opnieuw</a>
	<% }  %>
</body>
</html>
