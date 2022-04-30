<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<%
String name = request.getParameter("un");
String email = request.getParameter("em");
String num = request.getParameter("ph");
String address=request.getParameter("ad");
String ps = request.getParameter("ps");
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
Statement stmt = con.createStatement();

	int rs = stmt.executeUpdate("INSERT INTO food_online(user_name,email,phone_no,address,password) VALUES('"+name+"','"+email+"','"+num+"','"+address+"','"+ps+"');");
	


	response.sendRedirect("login.jsp");


}
	catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
			
		e.printStackTrace();
		}
	%>
</body>
</html>