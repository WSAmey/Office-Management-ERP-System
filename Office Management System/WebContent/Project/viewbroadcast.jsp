<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Broadcast</title>
</head>
<style>
*{
	padding:0;
	margin: 0;
}

body{
		overflow-x: hidden;
		background: whitesmoke
}
#edit{
	cursor: pointer;
	color: white;
}

#delete{
	cursor: pointer;
	color: white;
}

.table td {
   text-align: center;   
}
.table{
	margin: auto; 
	background: white;  
} 

.table_box{
	background: white;
    margin-left: 192px;
    width: 75.79%;
    padding: 2px;
    margin-top: 5px;
    margin-bottom: 25px;
}
.table_p{
	margin-left: 26px;
    font-weight: 700;
    font-size: large;
    margin-top: -12px;
    width: 100%;
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
	color:red;
	width:145px;
}
#search{
	width: 227.79%;
	margin-left: -325px;
}
.msg,h5{
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

<h3 class="add_h2">Broadcast</h3>
			
			<br>
			
			<div class="msg"><h5><%
		String msg=(String)session.getAttribute("updatemsg");
		
		if(msg==null){
			out.println();
		}
		else{
			out.println(msg);	
		}
		session.removeAttribute("updatemsg"); 
		
		String msg4=(String)session.getAttribute("deletemsg");
		
		if(msg4==null){
			out.println();
		}
		else{
			out.println(msg4);	
		}
		session.removeAttribute("deletemsg");
		
		%>
					</h5></div>
					
			<!--Search input -->
			
		<form action="viewbroadcast.jsp">
	
			<div class="col-md-4" style="background-color: white;">
  <input type="text" id="search" class="form-control" placeholder="&#128269; Search By Broadcast Description.." name="search">
  <div class="input-group-append">
  </div>

	</div>
		</form>  
		<div class="table_box">
	<br>
	<p class="table_p">Broadcast Record</p>
		<table class="table text-center" style="background-color: white;width:95%">	
		
			<%
			
			String search=request.getParameter("search");
			String fname =(String)session.getAttribute("fname1");
			int id =(Integer)session.getAttribute("id");
			
			 Class.forName("com.mysql.jdbc.Driver");
			
			Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/officemang","root","root"); 
			 Statement st1 = con1.createStatement(); 
			
			 ResultSet r4;
			 if(search != null){
			 	r4 = st1.executeQuery("select * from broadcast  where broaddesc ='"+search+"' and status = '1' " ); 
			 	
			 }	 
		
		
			 else { 
				 //if(uname.equals("Admin")){
				 r4 = st1.executeQuery("select * from broadcast where status='1' ");  
				 //}
				 //else{
					 
				 //r4 = st1.executeQuery("select * from todo where id='"+id+"'");  
				 //}
				 }
			 
			 
		
		%>
		<thead style="color:white;background-color:	royalblue ;">
	<tr>
	
	<th scope="row" >Broadcast Description</th>
	<th scope="row">Date</th>
	<th scope="row">Action</th>
	<th scope="row"></th>

	
		
	</tr>
		</thead>
	<tbody>
		<tr>
		<% 
			if(r4.next()!=false){
			do{
				%>
				</tr>
				<tr>
	
				<td class="w-50"><% out.println(r4.getString("broaddesc")); %></td>
				<td ><% out.println(r4.getString("fromdate")); %></td>
			
				 <td class="w-25">
				 								 
 			 <button type="button" class="btn btn-success" onclick="window.location.href='updatebroadcastform.jsp?id=<%=r4.getInt("id")%>&broaddesc=<%=r4.getString("broaddesc")%>&fromdate=<%=r4.getString("fromdate")%>';">EDIT <i id="edit" class="fa-solid fa-pen"></i></button> 
 			 	&nbsp;
 			 <button type="button" class="btn btn-danger" onclick="window.location.href='deletebroadcast.jsp?id=<%=r4.getInt("id")%>';">DELETE <i id="delete" class="fa-solid fa-trash"></i></button> 
				
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
		<div class="alert alert-danger" role="alert" style="margin-left: 192px;width: 75.82%;margin-top: -11px;">
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