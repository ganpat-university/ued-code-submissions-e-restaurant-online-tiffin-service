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
String payment = request.getParameter("pm");
String address=request.getParameter("ad");
String days = request.getParameter("dy");
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
Statement stmt = con.createStatement();

	int rs = stmt.executeUpdate("INSERT INTO `orderdata`(`Name`, `Payment_method`, `Address`, `Days`) VALUES('"+name+"','"+payment+"','"+address+"','"+days+"');");
	


	response.sendRedirect("index.html");


}
	catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
			
		e.printStackTrace();
		}
	%>
</body>
</html>