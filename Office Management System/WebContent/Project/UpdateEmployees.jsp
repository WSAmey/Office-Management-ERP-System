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
<title>Update Employees</title>

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

.upd_h3, h3 {
	background: whitesmoke;
	text-align: center;
	color: blueviolet;
}

.msg, h4 {
	background: whitesmoke;
	color: green;
	text-align: center;
}
</style>

</head>




<body>
	<%@ include file="header1.jsp"%>
	<br>

	<h3 class="upd_h3">Update Employee Record</h3>
	<%

		int id=Integer.parseInt(request.getParameter("id")); 
		String fname1=request.getParameter("fn");
		String lname1=request.getParameter("ln");
		String address=request.getParameter("address");
		String uname3=request.getParameter("un");

		String city=request.getParameter("city");
		String gender=request.getParameter("gender");
		String pincode=request.getParameter("pincode");
		String phoneno=request.getParameter("phoneno");
		String salary=request.getParameter("salary");
		String aadhaarno=request.getParameter("aadharno");
		String email=request.getParameter("email");
		String jobrole=request.getParameter("jobrole");
		
		
	%>


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

						<form action="update.jsp">
							<input name="flag" value="employee" type="hidden">
							<div class="row" style="background-color: white;">
								<div class="col-md-6 mb-4" style="background-color: white;">

									<div class="form-outline" style="background-color: white;">
										<input type="hidden" value="<%= id %>" id="id" name="id"
											class="form-control form-control-lg" />
									</div>
								</div>
							</div>
							<div class="row" style="background-color: white;">
								<div class="col-12" style="background-color: white;">
									<div class="form-outline" style="background-color: white;">
										<label class="form-label" for="firstName"> First Name:</label>
										<input type="text" value="<%= fname1 %>" id="firstName"
											name="fname" class="form-control form-control-lg w-100" />
									</div>
								</div>
							</div>
							<br>
							<div class="row" style="background-color: white;">

								<div class="col-12" style="background-color: white;">

									<div class="form-outline" style="background-color: white;">
										<label class="form-label" for="lastName">Last Name</label> <input
											type="text" value="<%= lname1 %>" id="lastName" name="lname"
											class="form-control form-control-lg w-100" />
									</div>

								</div>
							</div>
							<br>
							<div class="row" style="background-color: white;">

								<label class="form-label" for="lastName">Address</label>
								<div class="form-floating" style="background-color: white;">
									<textarea class="form-control form-control-lg " name="address"
										id="floatingTextarea2" style="height: 65px"><%= address %></textarea>
								</div>
							</div>
							<br>
							<div class="row" style="background-color: white;">
								<div class="col-12 " style="background-color: white;">

									<label id="lcity" class="form-label select-label">City</label>
									<select id="city" class="select form-control-lg w-100 "
										name="city">
										<option value="<%= city %>"><%= city %></option>
										<option value="Ahmedabad">Ahmedabad</option>
										<option value="Surat">Surat</option>
										<option value="Rajkot">Rajkot</option>
										<option value="Vardodara">Vadodara</option>
									</select>

								</div>
							</div>
							<br>

							<div class="row" style="background-color: white;">
								<div class="col-12" style="background-color: white;">

									<div class="form-outline" style="background-color: white;">
										<label class="form-label" for="emailAddress">Email</label> <input
											type="email" id="emailAddress" value="<%= email %>"
											name="email" class="form-control form-control-lg w-100" />
									</div>

								</div>
							</div>
							<br>
							<div class="row" style="background-color: white;">


								<div class="col-12" style="background-color: white;">

									<div class="form-outline" style="background-color: white;">
										<label class="form-label" for="phoneNumber">Phone
											Number#</label> <input type="text" id="phoneNumber"
											value="<%= phoneno %>" name="phnum"
											class="form-control form-control-lg w-100" />
									</div>

								</div>

							</div>

							<br>
							<div class="row" style="background-color: white;">
								<div class="col-12" style="background-color: white;">

									<div class="form-outline" style="background-color: white;">
										<label class="form-label" for="aadharNumber">Aadhar
											Number#</label> <input type="text" id="aadharNumber"
											value="<%= aadhaarno %>" name="aadharno"
											class="form-control form-control-lg w-100" />
									</div>
								</div>
								</div>
								<br>
								
								<div class="row" style="background-color: white;">
								
								<div class="col-12" style="background-color: white;">

									<div class="form-outline" style="background-color: white;">
										<label class="form-label" for="jobRole">Job Role</label> <input
											type="text" id="designation" value="<%= jobrole %>"
											name="jobrole" class="form-control form-control-lg w-100" />
									</div>

								</div>

							</div>
							<br>
							<div class="row" style="background-color: white;">
								<div class="col-12" style="background-color: white;">

									<div class="form-outline" style="background-color: white;">
										<label class="form-label" for="aadharNumber">User Name</label>
										<input type="text" id="aadharNumber" value="<%= uname3 %>"
											name="uname" class="form-control form-control-lg w-100" />
									</div>
									</div>
								</div>
								<br>
															<div class="row" style="background-color: white;">
								
								<div class="col-12" style="background-color: white;">

									<div class="form-outline" style="background-color: white;">
										<label class="form-label" for="jobRole">Salary</label> <input
											type="text" id="designation" value="<%= salary %>"
											name="salary" class="form-control form-control-lg" />
									</div>

								</div>

							</div>
							<br>
							<div class="row" style="background-color: white;">
							
							<div class="col-12" style="background-color: white;">

								<div class="form-outline" style="background-color: white;">
									<label class="form-label" for="pinCode">Pincode#</label> <input
										type="text" id="emailAddress" value="<%= pincode %>"
										name="pincode" class="form-control form-control-lg"
										maxlength="6" />
								</div>
							</div>
							</div>
							
							
								<div class="mt-4 pt-2 text-center"
								style="background-color: white;">
								<input class="btn btn-primary btn-lg "
									style="float: left; margin-bottom: -12px;" type="submit"
									value="UPDATE" />
							</div>
								<div class="mt-4 pt-2 float-right"
									style="background-color: white;">
									<a class="btn btn-danger btn-lg "
										Style="text-decoration: none; float: right; margin-top: -29px;"
										href="viewEmployees.jsp">Cancel</a>
								</div>
						</form>
					</div>
				</div>
				<br><br>
			</div>
		</div>
	</div>
	</section>


</body>



</html>