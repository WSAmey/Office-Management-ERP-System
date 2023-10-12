<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Task</title>
</head>
<style>
*{
	padding:0;
	margin: 0;
}

body{
		overflow-x: hidden;
}
#edit{
	cursor: pointer;
	color: white;
}
#search{
    width: 1414px;
   	margin-left: -463px;

}
.table td {
   text-align: center;   
}
.table{
	margin: auto;
   
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
.msg,h4{
		color: green;
		text-align: center;
}
form,input {
	margin-left: 515px;  
	width:100%; 
	margin-bottom: 10px;
}  
button{
	width:105px;
}

</style>

<body style="background-color: whitesmoke;">
<%@ include file="header1.jsp"%>
<br>

<h3 class="add_h2">View Task</h3>
			
			<br>
			
			<div class="msg" style="background-color: white;border:none;"><h4>
		<%
	
		%>
					</h4></div>
					
			<!--Search input -->
			<%
				String flag= request.getParameter("flag");
			if(flag.equals("header") || flag.equals("all") || flag.equals("update") || flag.equals("cancel")){
			
			%>
		<form action="empviewtask.jsp">
	
			<div class="col-md-4" style="background-color: white;border:none;">
						 <input type="hidden"  name="flag" value="header"> 
  <input type="text" class="form-control " id="search" placeholder="&#128269; Search By Task Status..." name="search">
  <div class="input-group-append" style="border:none;" >
  </div>

	</div>
		</form>  
	<%
			}
	%>
			
		
			<%
			
			String search=request.getParameter("search");
			String fname =(String)session.getAttribute("fname1");
			int id=(Integer)session.getAttribute("id");

			 Class.forName("com.mysql.jdbc.Driver");
			
			Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/officemang","root","root"); 
			 Statement st1 = con.createStatement(); 
			ResultSet rfname=st1.executeQuery("select toemp from task where toemp='"+fname+"'");
			rfname.last();
		
			 ResultSet r4 = st1.executeQuery("select * from task where toemp='"+fname+"' order by taskid desc");
			 if(flag.equals("header") || flag.equals("update") || flag.equals("cancel")){
				 if(search != null){
						 r4 = st1.executeQuery("select * from task where taskstatus = '"+search+"' and toemp='"+fname+"' "  );				 
				 }	 
				 else{ 					 
						 r4 = st1.executeQuery("select * from task where toemp='"+fname+"' order by taskid desc");  
				 }
			 }
			 if(flag.equals("completed")){
				 r4 = st1.executeQuery("select * from task where toemp='"+fname+"' and taskstatus='Completed'");
			 }
			 if(flag.equals("pending")){
				 r4 = st1.executeQuery("select * from task where taskstatus = 'Pending' and toemp='"+fname+"' "  );				 
			 }
			 if(flag.equals("inprogress")){
				 r4 = st1.executeQuery("select * from task where taskstatus = 'In Progress' and toemp='"+fname+"' "  );
			 }
			 
		%>
			<div class="table_box">
	<br>
	<p class="table_p">Your Task Record</p>
	
	<table class="table  text-center"
		style="background-color: white;width:97%;">
		
		
		<thead style="color:white;background-color:	royalblue ;">
	<tr>
	
	<th scope="row" >Task Description</th>
	<th scope="row" >Category</th>
	<th scope="row" >Priority</th>
	<th scope="row">To Employee</th>
	<th scope="row">Assigned By</th>
	<th scope="row">Task Status</th>
	<th scope="row">Task Update</th>
	<th scope="row">From Date</th>
	<th scope="row">To Date</th>
	<th scope="row">Worked Hours</th>
	
	<%if(flag.equals("header") || flag.equals("update") || flag.equals("cancel")){ %>
	<th scope="row" >Action</th> 
	<%} %>
		
	</tr>
		</thead>
	<tbody>
		<% 
		if(r4.next()!=false){
			do{
				%>
				<tr>
	
				<td style="width:50%;"><% out.println(r4.getString("taskdesc")); %></td>
				<td><% out.println(r4.getString("category")); %></td>
				<td>
				<label class="badge"<% if(r4.getString("priority").equals("High")){ %>
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
				%>><% out.println(r4.getString("priority")); %></label>
				</td>
				<td><% out.println(r4.getString("toemp")); %></td>
				<td><% out.println(r4.getString("assignedby")); %></td>
				<td><label class="badge" 
				<% if(r4.getString("taskstatus").equals("Completed")){ %>
					style="background-color:lime; color:white;font-size: 15px;"
					
				<%
				}
				 else if(r4.getString("taskstatus").equals("In Progress")){ %>
					style="background-color:#007FFF; color:white;font-size: 15px;"
				<%
				}
				 else{ %>
					style="background-color:orangered; color:white;font-size: 15px;"
				<%
				}
				%> > <% out.println(r4.getString("taskstatus")); %> </label></td>
				<td style="width:50%;"><% out.println(r4.getString("taskupdate"));%></td>
				<td><% out.println(r4.getString("fromdate"));%></td>
				<td><% out.println(r4.getString("todate"));%></td>
				<td><% out.println(r4.getString("whours"));%></td>
				 	<td> 
				<% 
					if(flag.equals("header") || flag.equals("update") || flag.equals("cancel")){
						if(r4.getString("taskstatus").equals("Pending") || r4.getString("taskstatus").equals("In Progress")){%>
 				<button type="button" width="105px" class="btn btn-success" onclick="window.location.href='updateempviewtaskform.jsp?id=<%=r4.getInt("taskid")%>&taskdesc=<%=r4.getString("taskdesc")%>&category=<%=r4.getString("category")%>&priority=<%=r4.getString("priority")%>&status=<%=r4.getString("taskstatus")%>&fromdate=<%=r4.getString("fromdate")%>&todate=<%=r4.getString("todate")%>&assignedby=<%=r4.getString("assignedby")%>&toemp=<%=r4.getString("toemp")%>&whours=<%=r4.getString("whours")%>&taskupdate=<%=r4.getString("taskupdate")%>';">EDIT <i id="edit" class="fa-solid fa-pen"></i></button>
					
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