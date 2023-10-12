<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Profile</title>
</head>
<style>
* {
	padding: 0;
	margin: 0;
}



/*Form CSS:  */

.card-registration .select-input.form-control[readonly]:not([disabled]) {
font-size: 1rem;
line-height: 2.15;
padding-left: .75em;
padding-right: .75em;
}
.card-registration .select-arrow {
top: 13px;
}
.add_h2 , h3{
	text-align:center;
		color: blueviolet;
		
		margin-bottom: -5px;
}
.msg,h4{
		color: green;
		text-align: center;
		
}
input{
  pointer-events: none;
  
 }
 textarea {
	pointer-events:none;
}
</style>
<body>
<%@ include file="header1.jsp"%>

<%
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/officemang","root","root"); 
	Statement st1 = con1.createStatement(); 
	ResultSet rs1= st1.executeQuery("select * from employees where uname='"+uname+"'");
	
%>
<br><br>
            <h3 class="add_h2">User Profile</h3>
<section class="vh-100 gradient-custom" >
  <div class="container py-5 h-100" style="background-color: whitesmoke">
    <div class="row justify-content-center align-items-center h-100" style="background: whitesmoke;">
      <div class="col-12 col-lg-9 col-xl-7" style="background-color: whitesmoke;">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;border:none;" >
          <div class="card-body p-4 p-md-5" style="background-color: white;border-radius: 15px;border:none;box-shadow: 0px 4px 22px -6px rgba(0,0,0,0.75);">
            
            <form  action="#" >
            <%
				if(rs1.last()){
            %>
			
			              <div class="row" style="background-color: white;">
			              
			            	  <div class="col-md-4 mb-4" style="background-color: white;">
			            	  <%if(rs.getString("gender").equals("Male")){%> 
								<img src='https://icon-library.com/images/male-icon/male-icon-8.jpg' width="150" style="margin-top:-17px;border-radius:14px;">
							 <%}
			            	  
			            	  if(rs.getString("gender").equals("Female")){%>
								<img src='https://cdn2.iconfinder.com/data/icons/business-elements-17/128/a_business_female_office_woman_account_profile_woman-512.png' width="150" style="margin-top:-17px;border-radius:14px;"> 
								<%} %>
								
								</div>
                <div class="col-md-4 mb-4" style="background-color: white;">

                  <div class="form-outline" style="background-color: white;">
                    <label class="form-label" for="firstName" style="margin-top:10px;"> First Name:</label>
                    <input type="text" id="firstName" name="fname" value="<%= rs1.getString("fname") %>" class="form-control form-control-lg" />
                
                  </div>

                </div>
                <div class="col-md-4 mb-4" style="background-color: white;">

                  <div class="form-outline" style="background-color: white;">
                    <label class="form-label" for="lastName" style="margin-top:10px;">Last Name:</label>
                    <input type="text" id="lastName" name="lname" value="<%= rs1.getString("lname") %>" class="form-control form-control-lg" />
                  </div>

                </div>
              </div>

                     <label class="form-label" for="lastName">Address:</label>
			<div class="form-floating" style="background-color: white;">
  			<textarea class="form-control form-control-lg"  name="address" id="floatingTextarea2" style="height: 100px" ><%= rs1.getString("address") %></textarea>
			</div>

                      <br>
              
              
               <div class="row" style="background-color: white;">
                
                <div class="col-md-6 mb-4 pb-2" style="background-color: white;">

                  <div class="form-outline" style="background-color: white;">
                    <label class="form-label" for="pinCode">Pincode#</label>
                    <input type="type" id="emailAddress" name="pincode" value="<%= rs1.getInt("pincode") %>" class="form-control form-control-lg" />
                  </div>

                </div>
                
                 <div class="col-md-6 mb-4" style="background-color: white;">

                  <div class="form-outline" style="background-color: white;">
                    <label class="form-label" for="lastName">City:</label>
                    <input type="text" id="lastName" name="lname" value="<%= rs1.getString("city") %>" class="form-control form-control-lg" />
                  </div>

                </div>
                
			
              </div>

              <div class="row" style="background-color: white;">
                <div class="col-md-6 mb-4 pb-2" style="background-color: white;">

                  <div class="form-outline" style="background-color: white;">
                    <label class="form-label" for="emailAddress">Email:</label>
                    <input type="email" id="emailAddress" name="email" class="form-control form-control-lg" value="<%= rs1.getString("email") %>"/>
                  </div>

                </div>
                
              
              
                <div class="col-md-6 mb-4 pb-2" style="background-color: white;">

                  <div class="form-outline" style="background-color: white;">
                    <label class="form-label" for="phoneNumber">Phone Number#</label>
                    <input type="number" id="phoneNumber" name="phnumber" class="form-control form-control-lg" value="<%= rs1.getInt("phoneno") %>"/>
                  </div>

                </div>
                
              </div>
              

				<div class="row" style="background-color: white;">
                <div class="col-md-6 mb-4 pb-2" style="background-color: white;">

                  <div class="form-outline" style="background-color: white;">
                    <label class="form-label" for="aadharNumber">Aadhar Number#</label>
                    <input type="text" id="aadharNumber" name="aadharnum" class="form-control form-control-lg" value="<%= rs1.getString("aadharno") %>"/>
                  </div>

                </div>
              
                <div class="col-md-6 mb-4 pb-2" style="background-color: white;">

                  <div class="form-outline" style="background-color: white;">
                    <label class="form-label" for="jobRole">Job Role:</label>
                    <input type="text" id="designation" name="jobrole" class="form-control form-control-lg" value="<%= rs1.getString("jobrole") %>"/>
                  </div>

                </div>
                
              </div>
              
              <div class="row" style="background-color: white;">
                <div class="col-md-6 mb-4 pb-2" style="background-color: white;">

                  <div class="form-outline" style="background-color: white;">
                    <label class="form-label" for="userNumber">User Name:</label>
                    <input type="text" id="userNumber" maxlength="12" name="uname" class="form-control form-control-lg" value="<%= rs1.getString("uname") %>" />
                  </div>

                </div>
            
                <div class="col-md-6 mb-4 pb-2" style="background-color: white;">

                  <div class="form-outline" style="background-color: white;">
                    <label class="form-label" for="Salary">Salary:</label>
                    <input type="text" id="phoneNumber" name="salary" class="form-control form-control-lg" value="<%= rs1.getInt("salary") %>"/>
                  </div>

                </div>
                <br>
                               <div class="row" style="background-color: white;">
               
                 <%-- <div class="col-md-6 mb-4" style="background-color: white;">

                  <h6 class="mb-2 pb-1" style="background-color: white;margin-left: 236px;font-weight: 400;">Gender: </h6>

                  <div class="form-check form-check-inline" style="background-color: white;margin-left: 301px;margin-top: -33px;">
                    <label style="margin-left:-22px;" class="form-check-label" for="maleGender"><%= rs1.getString("gender") %></label>
                    <input class="form-check-input" type="hidden" name="gender" id="maleGender" value="<%= rs1.getString("gender") %>" />
                  </div>
				</div>  --%>
				<div class="col-md-6 mb-4 pb-2" style="background-color: white;">

                  <div class="form-outline" style="background-color: white;">
                    <label class="form-label" for="Salary">Gender:</label>
                    <input type="text" id="gender" name="gender" class="form-control form-control-lg" value="<%= rs1.getString("gender") %>"/>
                  </div>

                </div>
              </div>
                
              	</div>

	<%
				}
	%>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


</body>
</html>