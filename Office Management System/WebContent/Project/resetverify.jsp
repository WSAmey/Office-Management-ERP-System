<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reset Verify</title>
</head>



<body>
<%
	String dbpass=(String)session.getAttribute("pass");
	String oldpass=request.getParameter("oldpass");
	String newpass=request.getParameter("newpass");
	String conirmpass=request.getParameter("confirmpass");
	
	session.setAttribute("passwordmsg", "Enter correct password!");
	
	 Class.forName("com.mysql.jdbc.Driver");
		
		Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/officemang","root","root"); 
		 Statement st1 = con1.createStatement(); 
		 ResultSet r4=st1.executeQuery("select pass from employees where pass='"+dbpass+"'");
		 r4.last();
		 if(oldpass.equals(r4.getString("pass")) && newpass.equals(conirmpass)){
			 st1.executeUpdate("update employees set pass='"+newpass+"'");
			 response.sendRedirect("login.jsp");
			 
		 }
		 else{
			 response.sendRedirect("resetpass.jsp");
			 
		 }
%>
</body>
</html>