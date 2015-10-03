<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.annotation.WebServlet"%>
<%@ page import="javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New User</title>
</head>
<body>
<%
String username, email, password;

username = request.getParameter("userName");
email = request.getParameter("userEmail");
password = request.getParameter("userPassword");

String userDetails = "";
if (username.trim().equals("") || email.trim().equals("")
		|| password.trim().equals("")) {
	userDetails = "Field cannot be empty";
} else {
	userDetails = username + "\n" + email + "\n" + password;
}

response.setContentType("text/plain"); // Set content type of the response so that jQuery knows what it can expect.
response.getWriter().write(userDetails);// Write response body.

%>
</body>
</html>