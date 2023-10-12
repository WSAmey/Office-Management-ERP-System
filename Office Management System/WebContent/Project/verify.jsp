<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Verify</title>
</head>
<body>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/officemang","root","root");
		Statement st = con.createStatement();

		String username1 = request.getParameter("UserName1");
		String password1 = request.getParameter("Password1");
		
		session.setAttribute("uname", username1);		//uname and pass are setted to further display them on index page 
		session.setAttribute("pass", password1);		
		ResultSet rs=st.executeQuery("select uname,pass from employees where uname='"+username1+"' and pass='"+password1+"' and status='1' ");
		
		
		
		session.setAttribute("Message", "Invalid username or password!");
		rs.last();
		if(rs.getRow()>0){
			response.sendRedirect("index.jsp");
		}
		else{
			response.sendRedirect("login.jsp?flag=verify");
		}

	%>
</body>
</html>