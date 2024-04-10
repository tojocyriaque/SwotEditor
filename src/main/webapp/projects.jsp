<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tous les projets</title>
</head>
<body>
	<%  
		ArrayList<String> projects = (ArrayList<String>) request.getAttribute("projects");
		for(String project: projects){
			out.println("<a href='./?proj="+project+"'>"+project+"</a><br>");
		}
	%>
</body>
</html>