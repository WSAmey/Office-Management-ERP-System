<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Sofia+Sans+Semi+Condensed:ital,wght@0,400;0,700;0,800;1,300;1,500;1,900&display=swap" rel="stylesheet">    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
<title>Header</title>

<head>


<style>
body{
	margin: 0;
	padding: 0;
	background-color: whitesmoke;
}
 ul{
        padding: 0;
        list-style: none;
        background: white;
    }
    ul li{
        display: inline-block;
        position: relative;
        line-height: 21px;
        text-align: center;
    }

    ul li a{
        display: block;
        padding: 14px 25px;
        color: #36454F;
        text-decoration: none;
        text-align:center;
        font-weight: 1000;
        font-size: larger;
        @import url('https://fonts.googleapis.com/css2?family=Sofia+Sans+Semi+Condensed:ital,wght@0,400;0,700;0,800;1,300;1,900&display=swap');
		font-family: 'Sofia Sans Semi Condensed', sans-serif;		   	
		}
    ul li a:hover{
     	padding: 14px 25px;
        color: blueviolet;
		background-color: #D3D3D3;
    }
    ul li ul.dropdown{
        min-width: 100%; /* Set width of the dropdown */
        background: #f2f2f2;
        display: none;
        position: absolute;
        z-index: 999;
        left: 0;
    }
    ul li:hover ul.dropdown{
        display: block;	/* Display the dropdown */
    }
    ul li ul.dropdown li{
        display: block;
    }
    i{
    	    color: #708090;
    }
</style>
</head>
<body>
<%
	
	String uname=(String)session.getAttribute("uname"); 
	String pass=(String)session.getAttribute("pass"); 
	

		 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/officemang","root","root");
	Statement st = con.createStatement();	
	
	ResultSet rid=st.executeQuery("select id from employees where uname='"+uname+"'");
	rid.next();
	ResultSet rs=st.executeQuery("select * from employees where id='"+rid.getInt("id")+"'");
	rs.last();	
	session.setAttribute("fname1", rs.getString("fname"));
	session.setAttribute("id", rs.getInt("id"));
	
	
		 
	
	%>
	



<!-- As a heading -->
<nav class="navbar navbar-light bg-secondary">
  <div class="container-fluid "  style=" background: #6a3093;  /* fallback for old browsers */
background: -webkit-linear-gradient(to left, #6a3093, #a044ff);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to left, #6a3093, #a044ff); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */; margin-top:-8px; margin-bottom: -8px;padding-top: 6px;padding-bottom: 6px;">
    <span class="navbar-brand mb-0 h1 fs-2" style="color: white;font-weight: 900;font-size: larger;@import url('https://fonts.googleapis.com/css2?family=Sofia+Sans+Semi+Condensed:ital,wght@0,400;0,700;0,800;1,300;1,900&display=swap');
		font-family: 'Sofia Sans Semi Condensed', sans-serif;	">Office Management System</span>
    <span class="navbar-brand mb-0 h1 fs-4" style="color: white;font-weight: 900;font-size: larger;@import url('https://fonts.googleapis.com/css2?family=Sofia+Sans+Semi+Condensed:ital,wght@0,400;0,700;0,800;1,300;1,900&display=swap');
		font-family: 'Sofia Sans Semi Condensed', sans-serif;	"> <% if(rs.last()){
	
	out.print(rs.getString("uname")+" : "+rs.getString("fname")+" "+rs.getString("lname"));
		 
	}
	%></span>
  </div>
</nav>

<ul>
        <li>
        
        <a href="index.jsp"><i class="fa-solid fa-gauge-high"></i> &nbsp;Home</a></li>
        <li><a href="viewempprofile.jsp"><i class="fa-solid fa-circle-user"></i>  Profile</a></li>
          <%
          
            if(uname.equals("Admin")){
            %>
        <li>
            <a href="#"><i class="fa-solid fa-user-tie"></i> &nbsp;Manage Employees &#9662;</a>
            <ul class="dropdown">
			<li><a href="addEmployees.jsp" class="smalltext"><i class="fa-solid fa-plus"></i> Add</a></li>
            <li><a href="viewEmployees.jsp" class="smalltext"><i class="fa-regular fa-eye"></i> View</a></li>              
            </ul>
        </li>
        <li>
            <a href="#"><i class="fa-solid fa-pen"></i> &nbsp;Assign Task &#9662;</a>
            <ul class="dropdown" style="width:170px;">
			<li><a href="addTask.jsp"class="smalltext"><i class="fa-solid fa-plus"></i> Add</a></li>
            <li><a href="viewTask.jsp?flag=header" class="smalltext"><i class="fa-regular fa-eye"></i> View</a></li>              
            </ul>
        </li>
        <li>
            <a href="#"><i class="fa-regular fa-clipboard"></i> &nbsp;To Do &#9662;</a>
            <ul class="dropdown" style="width:170px;">
			<li><a href="Todo.jsp"class="smalltext"><i class="fa-solid fa-plus"></i> Add</a></li>
            <li><a href="viewyourtask.jsp?flag=header" class="smalltext"><i class="fa-regular fa-eye"></i> View</a></li>              
            </ul>
        </li>
        
        <li>
            <a href="#"><i class="fa-sharp fa-solid fa-bullhorn"></i> &nbsp;Broadcast &#9662;</a>
            <ul class="dropdown" style="width:170px;">
			<li><a href="broadcast.jsp" class="smalltext"><i class="fa-solid fa-plus"></i> Add </a></li>
            <li><a href="viewbroadcast.jsp" class="smalltext"><i class="fa-regular fa-eye"></i> View </a></li>              
            </ul>
        </li>
        <%
            }
            else{
        %>
          <li>
            <a href="#"><i class="fa-solid fa-book"></i>&nbsp; Task Report&#9662;</a>
            <ul class="dropdown">
			<li><a href="empviewtask.jsp?flag=header" class="smalltext"><i class="fa-regular fa-eye"></i> View </a></li>
            
            </ul>
        </li>
        
        <%
        
            }
        %>
        
        <li><a href="resetpass.jsp"><i class="fa-solid fa-unlock"></i> &nbsp;Change Password</a></li>
        <li><a href="login.jsp?flag=logout"><i class="fa-solid fa-right-from-bracket"></i> &nbsp;Log out</a></li>
     	
    </ul>
</body>
</html>