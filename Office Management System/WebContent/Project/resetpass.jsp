<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reset Password</title>
</head>
<style>

body{
		background:whitesmoke;
		overflow-y: hidden;
}

.pass_h2 , h3{

	text-align:center;
		color: blueviolet;
		
}

.msg,h4{
		color: red;
		text-align: center;
		background: whitesmoke;
		
}
.passcontainer{
	background: whitesmoke;
	margin-top: -120px;
}
</style>


<body>
<%@ include file="header1.jsp" %>
<br><br>
<h3 class="pass_h2">Change Password</h3><br>
<div class="msg"><h4>
		<%
		String resetmsg=(String)session.getAttribute("passwordmsg");
		
		if(resetmsg==null){
			out.println();
		}
		else{
			out.println(resetmsg);	
		}
		session.removeAttribute("passwordmsg");
		
		%>
					</h4></div>

<div class="passcontainer">
<section class="vh-100 gradient-custom" style="background-color: whitesmoke;" >
  <div class="container py-5 h-100" style="background-color: whitesmoke;">
    <div class="row justify-content-center align-items-center h-100" style="background: whitesmoke;">
      <div class="col-12 col-lg-9 col-xl-7" style="background-color: whitesmoke;">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;border:none;" >
          <div class="card-body p-4 p-md-5" style="background-color: white;border-radius: 15px;border:none;margin-left: -325px;width: 1396px;">
                        <form  action="resetverify.jsp" >


                  <div class="form-outline" style="background-color: white;">
                    <label class="form-label" for="oldpass"> Old Password:</label>
                    <input type="password" id="oldpass" name="oldpass" class="form-control form-control-lg" style="width:100%" required/>
                

                </div>
				<br>
                  <div class="form-outline" style="background-color: white;">
                    <label class="form-label" for="newpass"> New Password:</label>
                    <input type="password" id="newpass" name="newpass" class="form-control form-control-lg" required/>
                
                  

                </div>
                
					<br>
                  <div class="form-outline" style="background-color: white;">
                    <label class="form-label" for="confirmpass"> Confirm Password:</label>
                    <input type="password" id="confirmpass" name="confirmpass" class="form-control form-control-lg" required/>
                
                  </div>


              

              <div class="mt-4 pt-2 text-center" style="background-color: white;">
                <input class="btn btn-primary btn-lg " style="width: 100%;margin-bottom: -12px;" type="submit" value="RESET" />
              </div>

            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
 </div>

 
 
</body>
</html>