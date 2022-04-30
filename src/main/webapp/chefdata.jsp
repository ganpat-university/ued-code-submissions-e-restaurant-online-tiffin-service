<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name = request.getParameter("cn");
String ph = request.getParameter("cmo");
String address=request.getParameter("cadd");
String ex = request.getParameter("cexp");
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
Statement stmt = con.createStatement();

	int rs = stmt.executeUpdate("INSERT INTO `chefdata`(`Chef_name`, `Chef_mo`, `Chef_add`, `Chef_exp`) VALUES('"+name+"','"+ph+"','"+address+"','"+ex+"');");
	


	response.sendRedirect("index.html");


}
	catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
			
		e.printStackTrace();
		}
	%>
</body>
</html>