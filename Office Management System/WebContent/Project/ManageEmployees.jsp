<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Manage Residence</title>
</head>

<style>

	*{
		margin:0;
		padding:0;
	}
	body{
		background-color:whitesmoke; 
	
	}
	.header{
		background-color: blueviolet;
		color:white;
		height:40%;
		padding-top:10px;
		padding-bottom:10px;
		
	}
	h2{
		text-align: left;	
		margin-left: 60px;	
	}
		
	h5{
		float: right;
		margin-top: -37px;
		margin-right: 100px;
		font-weight: 900;
	}

	.header-2{

		background-color: white;
		color: gray;
		padding-top:7px;
		padding-bottom:15px;
		box-shadow: 0px 4px 22px -6px rgba(0,0,0,0.75);
		
	}
	
	a{
		display:inline;
		text-decoration: none;
		color: gray;
		 margin-left: 50px; 
	}
	
 	a , .a1{
		margin-left: 210px;
	} 
	
	.sub-head,  p,.h4{
		display:inline;
	}

	.sub-head, p{

		margin-left: 715px;
		color: gray;
		font-size: medium;
	}
	
	.sub-head, .h4{
		margin-left:104px;
		font-size: x-large;
	 	color: black;
	}
	.addResidence{
		background-color: blue;
		width:400px;
		height: 100px;
	}
	.addResidence, a{
		text-align:center;
		/* margin-left:10px; 
		padding-top: 27px; */
		font-weight: bolder;
		color: white;
		
	}
	
</style>

<body>
<%-- 	<h2>Welcome <%
		String dname = (String)session.getAttribute("DisplayName");
		out.print(dname);
	%> </h2> --%>

<header>
	<div class="header">
	<h2>Society Management System </h2>
	<h5><% 
		String fname=(String)session.getAttribute("FirstName"); 
		String lname=(String)session.getAttribute("LastName");
		out.print(fname+" "+lname);
		
	%></h5>
		
	</div>
	<div class="header-2">
	<a class="a1" href="index.jsp">Manage Residence</a>
	<!-- <a class="a2" href="#">Society</a>
	<a class="a3" href="#">House</a>
	<a class="a4" href="#">User</a>
	<a class="a5" href="login.jsp">Logout</a> -->
	</div> 
	
</header>

<div class="addResidence">
	<a href="#">Add Residence</a>
</div>






</body>
</html>