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
<title>Add Employees</title>

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
}
</style>

</head>




<body>
	<%@include file="header1.jsp"%>
	<br>

	<h3 class="add-2">Employees Registration Form</h3>
	<br>
	<div class="msg">
		<h4>
			<%
		String msg=(String)session.getAttribute("Message1");
	
		if(msg==null){
			out.println();
		}
		else{
			out.println(msg);	
		}
		session.removeAttribute("Message1");
	
		
	%></h5>
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


						<form action="addEmpSave.jsp">

							<div class="row" style="background-color: white;">
								<div class="col-12" style="background-color: white;">

									<div class="form-outline" style="background-color: white;">
										<label class="form-label" for="firstName"> First Name:</label>
										<input type="text" id="firstName" name="fname"
											class="form-control form-control-lg w-100" required />

									</div>
								</div>
							</div>
							<br>
							<div class="row" style="background-color: white;">

								<div class="col-12" style="background-color: white;">

									<div class="form-outline" style="background-color: white;">
										<label class="form-label" for="lastName">Last Name</label> <input
											type="text" id="lastName" name="lname"
											class="form-control form-control-lg w-100" required />
									</div>

								</div>
							</div>
							<br>
							<div class="row" style="background-color: white;">

								<label class="form-label" for="lastName">Address</label>
								<div class="form-floating">
									<textarea class="form-control form-control-lg" name="address"
										id="floatingTextarea2" style="height: 65px" required></textarea>
								</div>
							</div>
							<br>

							<div class="row" style="background-color: white;">
								<div class="col-12 " style="background-color: white;">

									<label class="form-label select-label">City</label> <select
										class="select form-control-lg w-100 "
										style="text-align: left;" name="city">
										<option value=null selected disabled hidden>--
											Select City --</option>
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
										<label class="form-label" for="pinCode">Pincode#</label> <input
											type="text" id="pincode" name="pincode"
											class="form-control form-control-lg w-100" maxlength="6"
											required />
									</div>
								</div>
							</div>

							<br>
							<div class="row" style="background-color: white;">

								<div class="col-12" style="background-color: white;">

									<label class="form-label" for="pinCode">Gender</label><br>

									<div class="form-check form-check-inline"
										style="background-color: white;">
										<label class="form-check-label" for="femaleGender">Male</label>
										<input class="form-check-input" type="radio" name="gender"
											id="maleGender" value="Male" checked />
									</div>

									<div class="form-check form-check-inline"
										style="background-color: white;" s>
										<label class="form-check-label" for="femaleGender">Female</label>
										<input class="form-check-input" type="radio" name="gender"
											id="femaleGender" value="Female" />
									</div>
								</div>
							</div>
							<br>
							<div class="row" style="background-color: white;">
								<div class="col-md-6 mb-4 pb-2" style="background-color: white;">

									<div class="form-outline" style="background-color: white;">
										<label class="form-label" for="emailAddress">Email</label> <input
											type="email" style="width: 1339px;" id="emailAddress"
											name="email" class="form-control form-control-lg " required />
									</div>

								</div>
							</div>

							<div class="row" style="background-color: white;">

								<div class="col-12" style="background-color: white;">

									<div class="form-outline" style="background-color: white;">
										<label class="form-label" for="phoneNumber">Phone
											Number#</label> <input type="text" id="phoneNumber" name="phnumber"
											class="form-control form-control-lg w-100" required />
									</div>

								</div>

							</div>

							<br>
							<div class="row" style="background-color: white;">
								<div class="col-12" style="background-color: white;">

									<div class="form-outline" style="background-color: white;">
										<label class="form-label" for="aadharNumber">Aadhar
											Number#</label> <input type="text" id="aadharNumber" name="aadharnum"
											class="form-control form-control-lg w-100" required />
									</div>
								</div>
							</div>
							<br>
							<div class="row" style="background-color: white;">

								<div class="col-12" style="background-color: white;">

									<div class="form-outline" style="background-color: white;">
										<label class="form-label" for="jobRole">Job Role</label> <input
											type="text" id="designation" name="jobrole"
											class="form-control form-control-lg w-100" required />
									</div>

								</div>

							</div>
							<br>
							<div class="row" style="background-color: white;">
								<div class="col-12" style="background-color: white;">

									<div class="form-outline" style="background-color: white;">
										<label class="form-label" for="userNumber">User Name</label> <input
											type="text" id="userNumber" maxlength="12" name="uname"
											class="form-control form-control-lg w-100" required />
									</div>

								</div>
							</div>
							<br>
							<div class="row" style="background-color: white;">

								<div class="col-12" style="background-color: white;">

									<div class="form-outline" style="background-color: white;">
										<label class="form-label" for="password">Password</label> <input
											type="password" id="password" name="pass" maxlength="10"
											class="form-control form-control-lg w-100" required />
									</div>

								</div>

							</div>


							<br>
							<div class="row" style="background-color: white;">

								<div class="col-12" style="background-color: white;">

									<div class="form-outline" style="background-color: white;">
										<label class="form-label" for="Salary">Salary</label> <input
											type="text" id="phoneNumber" name="salary"
											class="form-control form-control-lg w-100" required />
									</div>
								</div>
							</div>


							<div class="mt-4 pt-2 text-center"
								style="background-color: white;">
								<input class="btn btn-primary btn-lg "
									style="float: left; margin-bottom: -12px;" type="submit"
									value="ADD" />
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