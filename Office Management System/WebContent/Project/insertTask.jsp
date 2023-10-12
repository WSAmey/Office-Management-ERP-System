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
String toEmp=request.getParameter("toemployee");
String whours=request.getParameter("whours");
String taskDesc=request.getParameter("taskDescription");
String category=request.getParameter("category");
String priority=request.getParameter("priority");
String taskstatus= request.getParameter("status");
LocalDate fromdate= LocalDate.parse( request.getParameter("fromdate"));
LocalDate todate=LocalDate.parse(request.getParameter("todate"));


String uname1=(String)session.getAttribute("uname"); //to get first name of admin that will assign the task to employee 
session.setAttribute("taskmsg", "Task Added Successfully!");

 Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/officemang","root","root");
	Statement st = con.createStatement();
	ResultSet uresult=st.executeQuery("select * from employees where uname='"+uname1+"'");

	if(uresult.last()){
		String ufname=uresult.getString("fname");
		int uid=uresult.getInt("id");
		st.executeUpdate("insert into task (toemp,taskdesc,category,priority,taskstatus,fromdate,todate,id,assignedby,whours,taskupdate) values('"+toEmp+"','"+taskDesc+"','"+category+"','"+priority+"','"+taskstatus+"','"+fromdate+"','"+todate+"','"+uid+"','"+ufname+"','"+whours+"','')");
	}
	response.sendRedirect("addTask.jsp");
	
	con.close();
	st.close();  
 

%>
</body>
</html>