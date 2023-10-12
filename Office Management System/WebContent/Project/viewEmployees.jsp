<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Employees</title>

<style>
*{
	padding:0;
	margin: 0;
}

body{
		overflow-x: hidden;
}

.table td {
   text-align: center;   
}
.table{
	margin: auto;
   background-color: white;
}
#edit{
	cursor: pointer;
	color: white;
}

#delete{
	cursor: pointer;
	color: white;
}

.table_box{
	background: white;
    margin-left: 23px; 
    width: 97%;
	padding:2px;
	margin-top: 5px;
	margin-bottom: 25px;
}

.table_p{
	margin-left:20px;
	font-weight: 700;
	font-size: large;	
    margin-top: -12px;
    margin-bottom: 17px;
    color: royalblue;
    }

.add_h2 , h3{
	text-align:center;
		color: blueviolet;
}
.add_h3 , h3{
	margin-left: 20px; 
	color: blueviolet;
}
.msg,h4{
		color: green;
		text-align: center;
		background-color:whitesmoke;
}
.nodatamsg, p{
	color: red;
}
form,input {
	margin-left: 515px;  
	width:100%; 
	margin-bottom: 10px;
}  
.actionbtn{
	display: flex;
}


</style>

</head>


<body style="background-color: whitesmoke;">
		<%@ include file="header1.jsp" %>
		<br>
			<h3 class="add_h2">Employees</h3>
			
			<br>
			
			<div class="msg"><h4>
		<%
		String msg=(String)session.getAttribute("updatemsg");
		
		if(msg==null){
			out.println();
		}
		else{
			out.println(msg);	
		}
		session.removeAttribute("updatemsg");
		String msg4=(String)session.getAttribute("deleteempmsg");
		
		if(msg4==null){
			out.println();
		}
		else{
			out.println(msg4);	
		}
		session.removeAttribute("deleteempmsg");
		%>
					</h4></div>
					<br>
			<!--Search input -->
			
		<form action="viewEmployees.jsp">
	
			<div class="col-md-4" style="background-color: white;">
  <input type="text" class="form-control" placeholder="&#128269; Search By Job Role..." name="search" style="margin-left: -493px;width: 1475px;">
  <div class="input-group-append">
  </div>

	</div>
		</form>  
		
		<div class="table_box">
	<br>
	<p class="table_p">Employee Data</p>
		<table class="table text-center" style="background-color: white;width: 97%;">	
		
			<%
			
			String search=request.getParameter("search");
			 Class.forName("com.mysql.jdbc.Driver");
			
			Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/officemang","root","root"); 
			 Statement st1 = con1.createStatement(); 
			 ResultSet r4;
			 if(search != null){
			 r4 = st1.executeQuery("select * from employees where jobrole='"+search+"' and status='1' " ); 
			 }
			 else{
				 r4 = st1.executeQuery("select * from employees where status='1' order by id desc "); 
			 }
			
		%>
		<thead style="color:white;background-color:	royalblue ;">
	<tr>
	
	<th scope="row" >First Name</th>
	<th scope="row" >Last Name</th>
	<th scope="row" >User Name</th>
	<th scope="row">Address</th>
	<th scope="row">City</th>
	<th scope="row">Gender</th>
	<th scope="row" >Pin code</th>
	<th scope="row" >Phone number</th>
	<th scope="row">Email</th>
	<th scope="row" >Aadhar number</th>
	<th scope="row">Salary</th>
	<th scope="row" >Job Role</th>
	<th scope="row" >Action</th>
		
	</tr>
		</thead>
	<tbody>
		<%-- <% 
		if(r4.next()==false){ %>
			<tr>
			<td>
			<p class="nodatamsg" >No data found!</p>
			</td>
			</tr> --%>
		
		<%
		if(r4.next()!=false){
			
			do{
				%>
				<tr>
	
				<td ><% out.println(r4.getString("fname")); %></td>
				<td ><% out.println(r4.getString("lname")); %></td>
				<td ><% out.println(r4.getString("uname")); %></td>
				<td><% out.println(r4.getString("address")); %></td>
				<td><% out.println(r4.getString("city")); %></td>
				<td><% out.println(r4.getString("gender")); %></td>
				<td ><% out.println(r4.getString("pincode")); %></td>
				<td ><% out.println(r4.getString("phoneno")); %></td>
				<td><% out.println(r4.getString("email")); %></td>
				<td ><% out.println(r4.getString("aadharno")); %></td>
				<td ><% out.println(r4.getString("salary")); %></td>
				<td ><% out.println(r4.getString("jobrole")); %></td>
				<td>
				<div class="actionbtn">
				<button type="button"  class="btn btn-success" style="width: 47%;" onclick="window.location.href='UpdateEmployees.jsp?id=<%=r4.getInt("id")%>&fn=<%=r4.getString("fname")%>&ln=<%=r4.getString("lname")%>&un=<%=r4.getString("uname")%>&address=<%=r4.getString("address")%>&city=<%=r4.getString("city")%>&gender=<%=r4.getString("gender")%>&pincode=<%=r4.getString("pincode")%>&phoneno=<%=r4.getString("phoneno")%>&email=<%=r4.getString("email")%>&aadharno=<%=r4.getString("aadharno")%>&salary=<%=r4.getString("salary")%>&jobrole=<%=r4.getString("jobrole")%>';"><i id="edit" class="fa-solid fa-pen" ></i>
				</button>				
				 &nbsp;
				<button type="button" class="btn btn-danger" style="width: 49%;" onclick="window.location.href='deleteEmp.jsp?id=<%=r4.getInt("id")%>';"><i id="delete" class="fa-solid fa-trash"></i> </button>
				</div>
				</td>
				</tr>
			<% 	
			}while(r4.next());
		}	
		else{
		%>		
			</tbody>
			</table>
			</div>
		<div class="alert alert-danger" role="alert" style="margin-left: 22px;width: 1491px;margin-top: -11px;">
				 No Results Found!
	</div>
			<%
			}
				con1.close();
				st1.close();
				r4.close();
			%>		
		
</body>

</html>