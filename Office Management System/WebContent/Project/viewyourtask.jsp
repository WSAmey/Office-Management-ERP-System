<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<title>View Your Task</title>
</head>
<style>
*{
	padding:0;
	margin: 0;
}
#edit{
	cursor: pointer;
	color: white;
}
body{
		overflow-x: hidden;
		background: whitesmoke;
}

.table td {
   text-align: center;   
}
.table{
	margin: auto;
	background: white;
 
} 
#search{
	  width: 1414px;
    margin-left: -463px;
}

.table_box{
	background: white;
    margin-left: 53px; 
    width: 93%;
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
.nodatamsg, p{
	color: red;
}
.msg,h4{
		color: green;
		text-align: center;
		background-color:whitesmoke;
}
form,input {
	margin-left: 515px;  
	width:100%; 
	margin-bottom: 10px;
}  


</style>

<body style="background-color: whitesmoke;">
<%@ include file="header1.jsp"%>
<br>

<h3 class="add_h2">Your Tasks</h3>
			
			<br>
			
			<div class="msg"><h4><%
		String msg=(String)session.getAttribute("updatemsg");
		
		if(msg==null){
			out.println();
		}
		else{
			out.println(msg);	
		}
		session.removeAttribute("updatemsg"); %>
					</h4></div>
					
			<!--Search input -->
			<%
			String flag=request.getParameter("flag");
			
			if(flag.equals("header") || flag.equals("update") || flag.equals("cancel")){ %>
		<form action="viewyourtask.jsp">
	
			<div class="col-md-4" style="background-color: white;">
			 <input type="hidden"  name="flag" value="header"> 
			 
  <input type="text" id="search" class="form-control" placeholder="&#128269; Search By Task Status..." name="search" >
  <div class="input-group-append">
  </div>

	</div>
		</form>  
	<%}
			%>
		<div class="table_box">
			<br>
		<p class="table_p">Your Task Record</p>
		<table class="table text-center" style="background-color: white;width: 97%;">	
		
			<%
			
			String search=request.getParameter("search");
			
			String fname =(String)session.getAttribute("fname1");
			int id =(Integer)session.getAttribute("id");
			
			 Class.forName("com.mysql.jdbc.Driver");
			
			Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/officemang","root","root"); 
			 Statement st1 = con1.createStatement(); 

			 ResultSet r4;
			 r4=st1.executeQuery("select * from todo where toemp='"+fname+"' order by taskid desc");;
			 
			 if(flag.equals("header") || flag.equals("update") || flag.equals("cancel")){
				 if(search != null){
					 r4=st1.executeQuery("select * from todo where toemp='"+fname+"' and taskstatus='"+search+"' order by taskid desc ");	 
				 }
				 else{
					 r4 = st1.executeQuery("select * from todo where toemp='"+fname+"' order by taskid desc");  	 
				 }
				 
			 } 		 
		
			
			
			 if(flag.equals("index")){
				 	r4 = st1.executeQuery("select * from todo  where taskstatus='Pending' " ); 	 						 	 
			 } 
			 
			 
		%>
		<thead style="color:white;background-color:	royalblue ;">
	<tr>
	
	<th scope="row" >Task Description</th>
	<th scope="row" >Category</th>
	<th scope="row" >Priority</th>
	<th scope="row">To Employee</th>
	<th scope="row">Task Status</th>
	<th scope="row">Work Notes</th>
	<th scope="row" class="w-25">From Date</th>
	<th scope="row" class="w-25">To Date</th>
	<th scope="row">Worked Hours</th>
	<%if(flag.equals("header") || flag.equals("update") || flag.equals("cancel")){ %>
	<th scope="row" width="100%">Action</th>
	<%} %>
	
		
	</tr>
		</thead>
	<tbody>
	<tr>
		<%-- <% 
			if(r4.next()==false){
				%>
					<tr>
				<td>
					<p class="nodatamsg">No data found!</p>
				</td>
			</tr>--%>
				
				<% 
		
			if(r4.next()!=false){
			do{
				%>
				</tr>
				
				<tr>
	
				<td style="width:50%"><% out.println(r4.getString("taskdesc")); %></td>
				<td><% out.println(r4.getString("category")); %></td>
				<td><label class="badge"
					<% if(r4.getString("priority").equals("High")){ %>
					style="background-color:lime; color:white;font-size: 15px;"
					
				<%
				}
				 else if(r4.getString("priority").equals("Medium")){ %>
					style="background-color: #007FFF; color:white;font-size: 15px;"
				<%
				}
				 else{ %>
					style="background-color:orangered; color:white;font-size: 15px;"
				<%
				}
				%>
				><% out.println(r4.getString("priority")); %></label></td>
				<td><% out.println(r4.getString("toemp")); %></td>
				<td> 
				<label class="badge" <% if(r4.getString("taskstatus").equals("Completed")){ %>
					style="margin:0;background-color:lime; color:white;font-size: 15px;"
					
				<%
				}
				 else if(r4.getString("taskstatus").equals("In Progress")){ %>
					style="margin:0;background-color: #007FFF; color:white;font-size: 15px;"
				<%
				}
				 else{ %>
					style="margin:0;background-color:orangered; color:white;font-size: 15px;"
				<%
				}
				%>> <% out.println(r4.getString("taskstatus")); %> </label>
				</td>
				<td style="width:50%;"><% out.println(r4.getString("taskupdate")); %></td>
				<td><% out.println(r4.getString("fromdate")); %></td>
				<td><% out.println(r4.getString("todate")); %></td>
				<td><% out.println(r4.getString("whours")); %></td>
			
			
				 <td >
				 <%
				 if(flag.equals("header") || flag.equals("update") || flag.equals("cancel")){
				 	if(r4.getString("taskstatus").equals("Pending") || r4.getString("taskstatus").equals("In Progress")){%>
 				<button type="button" style="width: 90px;" class="btn btn-success" onclick="window.location.href='updateyourtaskform.jsp?id=<%=r4.getInt("taskid")%>&taskdesc=<%=r4.getString("taskdesc")%>&category=<%=r4.getString("category")%>&priority=<%=r4.getString("priority")%>&status=<%=r4.getString("taskstatus")%>&fromdate=<%=r4.getString("fromdate")%>&todate=<%=r4.getString("todate")%>&toemp=<%=r4.getString("toemp")%>&whours=<%=r4.getString("whours")%>&taskupdate=<%=r4.getString("taskupdate")%>';">EDIT <i id="edit" class="fa-solid fa-pen" ></i></button>
 			   <%
					}
				 }	
				%>
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
			<div class="alert alert-danger" role="alert" style="margin-left: 53px;width: 93%;margin-top: -11px;">
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