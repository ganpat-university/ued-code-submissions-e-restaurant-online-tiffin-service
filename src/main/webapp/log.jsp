<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<% 

String uname=request.getParameter("username");
String pas = request.getParameter("ps");
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("SELECT * FROM food_online");
while(rs.next()){
	String uname1 = rs.getString(2);
	String pas1 = rs.getString(6);
if(uname.equals(uname1) && pas.equals(pas1))	
{
	response.sendRedirect("index.html");
}


}
if (uname.equals("Alpa") && pas.equals("Alpa@123")) {
	response.sendRedirect("Admin/index.html");	
}
else{
	out.println("<h1>"+"pls check your username and password"+"</h1>");
}
}
catch(ClassNotFoundException | SQLException e)
{
	out.print(e);
}
%>
</body>
</html>