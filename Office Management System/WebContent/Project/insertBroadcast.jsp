<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%@page import="java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String taskDesc=request.getParameter("broaddesc");
LocalDate fromdate= LocalDate.parse( request.getParameter("fromdate"));

	session.setAttribute("Message12", "Announcement Added Successfully!");

 Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/officemang","root","root");
	Statement st = con.createStatement();
	st.executeUpdate("insert into broadcast (broaddesc,fromdate,status) values('"+taskDesc+"','"+fromdate+"','1')");
	con.close();
	st.close();  
	response.sendRedirect("broadcast.jsp");
 

%>
</body>
</html>