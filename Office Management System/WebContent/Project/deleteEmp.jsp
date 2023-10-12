<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Employees</title>
</head>
<body>
<%
int id = Integer.parseInt(request.getParameter("id"));
session.setAttribute("deleteempmsg", "Record Deleted successfully!");
Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/officemang","root","root"); 
Statement st1 = con1.createStatement(); 
st1.executeUpdate("update employees set status='0' where id='"+id+"'");
response.sendRedirect("viewEmployees.jsp");
con1.close();
st1.close();
%>
</body>
</html>