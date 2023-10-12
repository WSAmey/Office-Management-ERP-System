<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Add Task</title>
</head>
<style>
* {
	padding: 0;
	margin: 0;
}

/*Form CSS:  */
.card-registration .select-input.form-control[readonly]:not ([disabled]
	) {
	font-size: 1rem;
	line-height: 2.15;
	padding-left: .75em;
	padding-right: .75em;
}

.card-registration .select-arrow {
	top: 13px;
}

.add_h2, h3 {
	text-align: center;
	color: blueviolet;
}

.msg, h4 {
	color: green;
	text-align: center;
	background-color: whitesmoke;
}

#tstatus {
	width: 100%;
}

#whours {
	width: 100%;
}

input {
	width: 100%;
}
</style>

<body>

	<%@ include file="header1.jsp"%>
	<br>
	<%

	String fname=(String)session.getAttribute("fname1");
					String uname1=(String)session.getAttribute("uname"); 
Class.forName("com.mysql.jdbc.Driver");
Connection con12 = DriverManager.getConnection("jdbc:mysql://localhost/officemang","root","root"); 
Statement st12 = con12.createStatement(); 
ResultSet rs1=st12.executeQuery("select * from employees where fname='"+uname1+"'");

%>
	<h3 class="add_h2">To Do</h3>
	<div class="msg">
		<h4>
			<%
	
		String msg=(String)session.getAttribute("Message12");
	
		if(msg==null){
			out.println();
		}
		else{
			out.println(msg);	
		}
		session.removeAttribute("Message12");
	
	%>
		</h4>
	</div>

	<section class="vh-100 gradient-custom">
	<div class="container py-5 h-100" style="background-color: whitesmoke">
		<div class="row justify-content-center align-items-center h-100"
			style="background: whitesmoke;">
			<div class="col-12 col-lg-9 col-xl-7"
				style="background-color: whitesmoke;">
				<div class="card shadow-2-strong card-registration"
					style="border-radius: 15px; border: none; width: 1434px; margin-left: -335px;">
					<div class="card-body p-4 p-md-5"
						style="background-color: white; border-radius: 15px; border: none;">


						<form action="todoinsert.jsp">

							<div class="row" style="background-color: white;">
								<div class="col-12" style="background-color: white;">
									<label class="form-label select-label">Employee: </label> <select
										class="select form-control-lg w-100" name="empname">
										<option value="<%= fname %>"><%=fname %></option>
									</select>
								</div>
							</div>
							<br> <label class="form-label" for="taskdescription">Task
								Description</label>
							<div class="form-floating" style="background-color: white;">
								<textarea class="form-control form-control-lg"
									name="taskDescription" id="floatingTextarea2"
									style="height: 100px" required></textarea>
							</div>
							<br>
							<div class="row" style="background-color: white;">
								<div class="col-12" style="background-color: white;">

									<label class="form-label select-label">Category: </label> <select
										class="select form-control-lg w-100" name="category">
										<option value=null selected disabled hidden>-- Task
											type--</option>
										<option value="development">Development</option>
										<option value="testing">Testing</option>
										<option value="administration">Administration</option>
										<option value="client visit">Client Visit</option>
										<option value="communication">Communication</option>
										<option value="meeting">Meeting</option>
										<option value="project disscussion">Project
											Disscussion</option>
										<option value="r&d">R&D</option>
									</select>

								</div>
							</div>
							<br>

							<div class="row" style="background-color: white;">

								<div class="col-12" style="background-color: white;">

									<label class="form-label select-label ">Priority level:
									</label> <select class="select form-control-lg w-100" name="priority">
										<option value=null selected disabled hidden>-- Task
											priority--</option>
										<option value="High">High</option>
										<option value="Medium">Medium</option>
										<option value="Low">Low</option>
									</select>

								</div>
							</div>
							<br>
							<!-- code for date picker  -->

							<div class="row" style="background-color: white;">
								<div class="col-12" style="background-color: white;">

									<div class="form-outline" style="background-color: white;">
										<label class="form-label" for="fromDate"> From Date:</label> <input
											type="date" id="my_date_picker"
											class="form-control form-control-lg" name="fromdate"
											autocomplete="off" required />

									</div>

								</div>
							</div>
							<br>
							<div class="row" style="background-color: white;">

								<div class="col-12" style="background-color: white;">

									<div class="form-outline" style="background-color: white;">
										<label class="form-label" for="lastName">To Date:</label> <input
											type="date" id="my_date_picker1"
											class="form-control form-control-lg" name="todate"
											autocomplete="off" required />

									</div>

								</div>
							</div>

							<br>
							
							<div class="row" style="background-color: white;">

								<div class="col-12" style="background-color: white;">

									<label class="form-label select-label">Task Status: </label> <select
										class="select form-control-lg " style="width: 100%"
										id="tstatus" name="status">
										<option value="Pending">Pending</option>

									</select>
								</div>
							</div>
							<br>
							<div class="row" style="background-color: white;">
								<div class="col-12" style="background-color: white;">
									<label class="form-label select-label w-100">Worked Hours: </label> <select
										class="select form-control-lg " id="whours" name="whours">
										<option value="0">0</option>
										
									</select>
								</div>
							</div>
							
							 <div class="mt-4 pt-2 text-center" style="background-color: white;">
							<button class="btn btn-primary" style="float: left;margin-bottom: -12px;font-size: larger;">ADD</button>
              </div>

						</form>
					</div>
				</div>
				<br>
				<br>
			</div>

		</div>
	</div>
	</section>
	<br>
	<br>

</body>

</html>