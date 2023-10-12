<%@page import="java.math.BigInteger"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Employees</title>
</head>
<body>
<%
String fn=request.getParameter("fname");
String ln=request.getParameter("lname");
String un=request.getParameter("uname");
String pass=request.getParameter("pass");
String email=request.getParameter("email");
String address=request.getParameter("address");
String city=request.getParameter("city");
String gender=request.getParameter("gender");
String jobrole=request.getParameter("jobrole");
String pincode=request.getParameter("pincode");
String phnumber=request.getParameter("phnumber");
String aadharnum=request.getParameter("aadharnum");
String salary=request.getParameter("salary");

session.setAttribute("Message1", "Employee Registered Successfully!");


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/officemang","root","root");
Statement st = con.createStatement();
st.executeUpdate("insert into employees (fname,lname,uname,pass,address,city,gender,pincode,phoneno,email,aadharno,salary,jobrole,status) values ('"+fn+"','"+ln+"','"+un+"','"+pass+"','"+address+"','"+city+"','"+gender+"','"+pincode+"','"+phnumber+"','"+email+"','"+aadharnum+"','"+salary+"','"+jobrole+"','1')");
	response.sendRedirect("addEmployees.jsp");
	con.close();
	st.close();


%>
</body>
</html>