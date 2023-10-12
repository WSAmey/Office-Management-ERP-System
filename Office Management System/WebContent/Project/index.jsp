<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />

<title>Dashboard</title>
<style>
.box {
	display: flex;
	margin-top: 15px;
}

.one {
	cursor: pointer;
	box-shadow: 0px 4px 22px -6px rgba(0, 0, 0, 118%);
	background: radial-gradient(circle at 10% 20%, rgb(99, 55, 255) 0%,
		rgb(39, 170, 255) 90%);
	flex: 1;
	margin: 27px;
	transition: 0.5s;
	text-align: center;
	padding-top: 50px;
	padding-bottom: 50px;
	color: white;
	font-family: 'Sofia Sans Semi Condensed', sans-serif;
	font-size: x-large;
	font-weight: bolder;
	border-radius: 10px;
}

.one:HOVER {
	width: 70;
	cursor: pointer;
	box-shadow: 0px 4px 22px -6px rgba(0, 0, 0, 118%);
	background: radial-gradient(circle at 10% 20%, rgb(99, 55, 255) 0%,
		rgb(39, 170, 255) 90%);
	flex: 1;
	margin: 27px;
	text-align: center;
	transition: 0.5s;
	padding-top: 37px;
	padding-bottom: 37px;
	color: white;
	font-family: 'Sofia Sans Semi Condensed', sans-serif;
	font-size: x-large;
	font-weight: bolder;
	border-radius: 10px;
}

.two {
	cursor: pointer;
	box-shadow: 0px 4px 22px -6px rgba(0, 0, 0, 118%);
	background: linear-gradient(75.7deg, rgb(62, 126, 34) 3.8%,
		rgb(99, 162, 17) 87.1%);
	flex: 1;
	margin: 27px;
	text-align: center;
	transition: 0.5s;
	padding-top: 50px;
	padding-bottom: 50px;
	color: white;
	font-family: 'Sofia Sans Semi Condensed', sans-serif;
	font-size: x-large;
	font-weight: 900;
	border-radius: 10px;
}

.two:HOVER {
	cursor: pointer;
	box-shadow: 0px 4px 22px -6px rgba(0, 0, 0, 118%);
	background: linear-gradient(75.7deg, rgb(62, 126, 34) 3.8%,
		rgb(99, 162, 17) 87.1%);
	flex: 1;
	margin: 27px;
	transition: 0.5s;
	text-align: center;
	padding-top: 37px;
	padding-bottom: 37px;
	color: white;
	font-family: 'Sofia Sans Semi Condensed', sans-serif;
	font-size: x-large;
	font-weight: 900;
	border-radius: 10px;
}

.three {
	cursor: pointer;
	box-shadow: 0px 4px 22px -6px rgba(0, 0, 0, 118%);
	background: linear-gradient(111.3deg, rgb(252, 56, 56) 11.7%,
		rgb(237, 13, 81) 81.7%);
	flex: 1;
	margin: 27px;
	transition: 0.5s;
	text-align: center;
	padding-top: 50px;
	padding-bottom: 50px;
	color: white;
	font-family: 'Sofia Sans Semi Condensed', sans-serif;
	font-size: x-large;
	font-weight: 900;
	border-radius: 10px;
}

.three:HOVER {
	cursor: pointer;
	box-shadow: 0px 4px 22px -6px rgba(0, 0, 0, 118%);
	background: linear-gradient(111.3deg, rgb(252, 56, 56) 11.7%,
		rgb(237, 13, 81) 81.7%);
	flex: 1;
	margin: 27px;
	text-align: center;
	transition: 0.5s;
	padding-top: 37px;
	padding-bottom: 37px;
	color: white;
	font-family: 'Sofia Sans Semi Condensed', sans-serif;
	font-size: x-large;
	font-weight: 900;
	border-radius: 10px;
}

.one1 {
	cursor: pointer;
	box-shadow: 0px 4px 22px -6px rgba(0, 0, 0, 118%);
	background: linear-gradient(75.7deg, rgb(62, 126, 34) 3.8%,
		rgb(99, 162, 17) 87.1%);
	flex: 1;
	margin: 27px;
	transition: 0.5s;
	text-align: center;
	padding-top: 50px;
	padding-bottom: 50px;
	color: white;
	font-family: 'Sofia Sans Semi Condensed', sans-serif;
	font-size: x-large;
	font-weight: 900;
	border-radius: 10px;
}

.one1:HOVER {
	cursor: pointer;
	box-shadow: 0px 4px 22px -6px rgba(0, 0, 0, 118%);
	background: linear-gradient(75.7deg, rgb(62, 126, 34) 3.8%,
		rgb(99, 162, 17) 87.1%);
	flex: 1;
	transition: 0.5s;
	margin: 27px;
	text-align: center;
	padding-top: 37px;
	padding-bottom: 37px;
	color: white;
	font-family: 'Sofia Sans Semi Condensed', sans-serif;
	font-size: x-large;
	font-weight: 900;
	border-radius: 10px;
}

.two1 {
	cursor: pointer;
	box-shadow: 0px 4px 22px -6px rgba(0, 0, 0, 118%);
	background: linear-gradient(111.3deg, rgb(252, 56, 56) 11.7%,
		rgb(237, 13, 81) 81.7%);
	flex: 1;
	margin: 27px;
	transition: 0.5s;
	text-align: center;
	padding-top: 50px;
	padding-bottom: 50px;
	color: white;
	font-family: 'Sofia Sans Semi Condensed', sans-serif;
	font-size: x-large;
	font-weight: 900;
	border-radius: 10px;
}

.two1:HOVER {
	cursor: pointer;
	box-shadow: 0px 4px 22px -6px rgba(0, 0, 0, 118%);
	background: linear-gradient(111.3deg, rgb(252, 56, 56) 11.7%,
		rgb(237, 13, 81) 81.7%);
	flex: 1;
	margin: 27px;
	text-align: center;
	padding-top: 37px;
	padding-bottom: 37px;
	color: white;
	font-family: 'Sofia Sans Semi Condensed', sans-serif;
	font-size: x-large;
	font-weight: 900;
	border-radius: 10px;
}

.three1 {
	cursor: pointer;
	box-shadow: 0px 4px 22px -6px rgba(0, 0, 0, 118%);
	background: radial-gradient(circle at 10% 20%, rgb(99, 55, 255) 0%,
		rgb(39, 170, 255) 90%);
	flex: 1;
	margin: 27px;
	transition: 0.5s;
	text-align: center;
	padding-top: 50px;
	padding-bottom: 50px;
	color: white;
	font-family: 'Sofia Sans Semi Condensed', sans-serif;
	font-size: x-large;
	font-weight: 900;
	border-radius: 10px;
}

.three1:HOVER {
	cursor: pointer;
	box-shadow: 0px 4px 22px -6px rgba(0, 0, 0, 118%);
	background: radial-gradient(circle at 10% 20%, rgb(99, 55, 255) 0%,
		rgb(39, 170, 255) 90%);
	flex: 1;
	margin: 27px;
	text-align: center;
	padding-top: 37px;
	padding-bottom: 37px;
	color: white;
	font-family: 'Sofia Sans Semi Condensed', sans-serif;
	font-size: x-large;
	font-weight: 900;
	border-radius: 10px;
}



.container_marquee {
	border: 1px solid #950ee9;
	margin-left: 25px;
	margin-right: 25px;
	padding-right: 15px;
	padding-left: 15px;
	height: 46px;
	margin-top: 150px;
}

.marquee_h5 {
	width: 187px;
	float: left;
	margin-left: -16px;
}

.marquee_h5, h5 {
	padding: 3px;
	background-color: #950ee9;
	color: white;
}
.table_box{
	background: white;
    margin-left: 26px;
    width: 96.5%;
	padding:2px;
	margin-top: 5px;
	margin-bottom: 25px;
}

.table_p{
	margin-left:25px;
	font-weight: 700;
	font-size: large;	
    margin-top: -12px;
    margin-bottom: 47px;
    color: royalblue;
}
.add_h2, h3 {
	font-weight: 700;
	font-size: x-larger;
	text-align: center;
	color: blueviolet;
	margin-bottom: -122px;
	margin-top: 27px;
	@import
	url('https://fonts.googleapis.com/css2?family=Sofia+Sans+Semi+Condensed:ital,wght@0,400;0,700;0,800;1,300;1,900&display=swap');font-family:'SofiaSansSemiCondensed',sans-serif;
}

marquee {
	margin-top: -36px;
	width: 1273px;
	margin-left: 171px;
}

.marquee p {
	margin-top: 8px;
}

img {
	vertical-align: middle;
	border: 0;
}

</style>
</head>

<body>

	<%@ include file="header1.jsp"%>

	<h3 class="add_h2">Dashboard</h3>

	<%
		String uname1 = (String) session.getAttribute("uname");
		String fname = (String) session.getAttribute("fname1");

		Class.forName("com.mysql.jdbc.Driver");
		Connection con12 = DriverManager.getConnection("jdbc:mysql://localhost/officemang", "root", "root");
		Statement st12 = con12.createStatement();
	%>
	<div class="container_marquee">
		<div class="marquee_h5">
			<h5>
				Announcement &nbsp;<i class="fa-sharp fa-solid fa-bullhorn"
					style="color: white;"></i>
			</h5>
		</div>
		<marquee behavior="scroll" direction="left" onmouseover="this.stop();"
			onmouseout="this.start();" scrollmount="12">

			<p
				style="color: blue; font-weight: 700; font-size: larger; font-family: 'Sofia Sans Semi Condensed', sans-serif;">
				<%
					ResultSet rmarq = st12.executeQuery("select * from broadcast where status='1' order by id desc");

					while (rmarq.next()) {
						out.println("<img src='./image/arrowGif.gif' />  "
								+ rmarq.getString("fromdate") + "  " + rmarq.getString("broaddesc")
								+ " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");

					}
				%>
			</p>
		</marquee>
	</div>
	<div class="box">
		<%
			if (uname.equals("Admin")) {
		%>
		<div class="one">
			<a href="viewEmployees.jsp"
				style="text-decoration: none; color: white;">Employees
				Registered: <%
				ResultSet r11 = st12.executeQuery("select count(*) as rowcount from employees");
					r11.next();

					out.println(r11.getInt("rowcount"));
			%>

			</a> <br> <i class="fa-solid fa-users" style="margin-top: 12px;color: white;border-radius: 50%;background-color: #ffffff59;padding: 28px;"></i>
		</div>

		<div class="three">
			<a href="viewTask.jsp?flag=index"
				style="text-decoration: none; color: white;">Pending Tasks: 
				<%
					ResultSet r3 = st12.executeQuery("select count(*) as rowcount from task where taskstatus='Pending' ");
						r3.next();

						out.println(r3.getInt("rowcount"));
				%>
			</a>
			<br>
			<i class="fa-solid fa-book" aria-hidden="true" style="margin-top: 12px;color: white;border-radius: 50%;background-color: #ffffff59;padding: 28px;"></i>
		</div>

		<div class="two">
			<a href="viewyourtask.jsp?flag=index"
				style="text-decoration: none; color: white;">To Do: <%
 	ResultSet r2 = st12.executeQuery("select count(*) as rowcount from todo where taskstatus='Pending' ");
 		r2.next();

 		out.println(r2.getInt("rowcount"));
 %>
			</a><br>
			<i class="fa-solid fa-pen" style="margin-top: 12px;color: white;border-radius: 50%;background-color: #ffffff59;padding: 28px;"></i>
		</div>

		<%
			} else {
		%>
		
		<div class="two1">
			<a href="empviewtask.jsp?flag=pending"
				style="text-decoration: none; color: white;">Pending Tasks: 
				<%
					ResultSet r4 = st12.executeQuery(
								"select count(*) as rowcount from task where toemp='" + fname + "' and taskstatus='Pending'");
						r4.next();

						out.println(r4.getInt("rowcount"));
				%>
			</a><br>
						<i class="fa-solid fa-pen" aria-hidden="true" style="margin-top: 12px;color: white;border-radius: 50%;background-color: #ffffff59;padding: 28px;"></i>
			
		</div>
		<div class="three1">
			<a href="empviewtask.jsp?flag=inprogress"
				style="text-decoration: none; color: white;">Tasks In Progress: 
				<%
					ResultSet r5 = st12.executeQuery("select count(*) as rowcount from task where toemp='" + fname
								+ "' and taskstatus='In Progress'");
						r5.next();

						out.println(r5.getInt("rowcount"));
				%>
			</a><br>
						<i class="fa fa-refresh" aria-hidden="true" style="margin-top: 12px;color: white;border-radius: 50%;background-color: #ffffff59;padding: 28px;"></i>
			
		</div>
		<div class="one1">
			<a href="empviewtask.jsp?flag=completed"
				style="text-decoration: none; color: white;">Tasks Completed: 
				<%
					ResultSet r3 = st12.executeQuery("select count(*) as rowcount from task where toemp='" + fname
								+ "' and taskstatus='Completed' ");
						r3.next();

						out.println(r3.getInt("rowcount"));
				%>
			</a><br>
						<i class="fa fa-check" aria-hidden="true" style="margin-top: 12px;color: white;border-radius: 50%;background-color: #ffffff59;padding: 28px;"></i>
			
		</div>
		<%
			}
		%>
	</div>
	<div class="table_box">
	<br>
	<p class="table_p">Recent Tasks</p>
	<table class="table  text-center" style="width:96.5%;background: white;margin-left: 27px;margin-top: -35px;" >  

		<%
			
			Class.forName("com.mysql.jdbc.Driver");

			Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/officemang", "root", "root");
			Statement st1 = con1.createStatement();
			ResultSet rfname = st1.executeQuery("select toemp from task where toemp='" + fname + "'");
			rfname.last();
			//out.println(rfname.getString("toemp"));
			ResultSet r4 = st1.executeQuery("select * from task order by taskid desc ");

			
			if (uname.equals("Admin")) {

				r4 = st1.executeQuery("select * from task where DATE(fromdate)=CURRENT_DATE order by taskid desc");

			}
			else{
				r4= st1.executeQuery("SELECT * FROM task WHERE DATE_FORMAT(fromdate, '%Y-%m-%d') = CURDATE() and toemp='"+uname+"' order by taskid desc");
			}
		%>
		<thead style="color: white; background-color: royalblue;">
			<tr>

				<th scope="row">Task Description</th>
				<th scope="row">Category</th>
				<th scope="row">Priority</th>
				<th scope="row">To Employee</th>
				<th scope="row">Assigned By</th>
				<th scope="row">Task Status</th>
				<th scope="row">Work Notes</th>
				<th scope="row">From Date</th>
				<th scope="row">To Date</th>
				<th scope="row">Worked Hours</th>
		

			</tr>
		</thead>
		<tbody>
		<tr>
			
		
			<%	
			//}
			if(r4.next()!=false){
				do{
			%>

				<td style="width:50%;">
					<%
						out.println(r4.getString("taskdesc"));
					%>
				</td>
				<td>
					<%
						out.println(r4.getString("category"));
					%>
				</td>
				<td><label class="badge"
					<%if (r4.getString("priority").equals("High")) {%>
					style="background-color: lime; color: white;font-size: 15px;"
					<%} else if (r4.getString("priority").equals("Medium")) {%>
					style="background-color: #007FFF; color:white; 	font-size: 15px;"
					<%} else {%>
					style="background-color:orangered; color:white;	font-size: 15px;" <%}%>>
						<%
							out.println(r4.getString("priority"));
						%>
				</label></td>
				<td>
					<%
						out.println(r4.getString("toemp"));
					%>
				</td>
				
				<td>
					<%
						out.println(r4.getString("assignedby"));
					%>
				</td>
				
				<td><label class="badge" 
					<%if (r4.getString("taskstatus").equals("Completed")) {%>
					style="background-color: lime; color: white; font-size: 15px;"
					<%} else if (r4.getString("taskstatus").equals("In Progress")) {%>
					style="background-color: #007FFF; color:white; font-size: 15px;"
					<%} else {%>
					style="background-color:orangered; color:white;	font-size: 15px;" <%}%>>
						<%
							out.println(r4.getString("taskstatus"));
						%>
				</label></td>
				<td style="width:50%;">
					<%
						out.println(r4.getString("taskupdate"));
					%>
				</td>
				<td>
					<%
						out.println(r4.getString("fromdate"));
					%>
				</td>
				<td>
					<%
						out.println(r4.getString("todate"));
					%>
				</td>
				<td>
					<%
						out.println(r4.getString("whours"));
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
		<div class="alert alert-success" role="alert" style="margin-left: 26px;width: 96.52%;margin-top: -19px;">
				<%if(uname.equals("Admin")){ %>
				 No Tasks Assigned Today!
				 <%}
				else {%>
				 No Recent Tasks Found!
				 <%} %>
	</div>
			<%
			
			}
				con1.close();
				st1.close();
				r4.close();
			%>		

</body>

</html>