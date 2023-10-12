<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
	
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>

<style>
body{
	background-color: whitesmoke;
}
.card{
margin-left:50px;
margin-right: 50px;
 }
.msg, p {
	color: red;
	text-align: center;
	background-color: white;
	margin-bottom: -172px;
    margin-top: 140px;
}
form-lable{
	font-size: larger;
	font-weight: bolder;
}
</style>

<body>
<div class="msg">
	
	
	<p>
	<%
	
		String message=(String) session.getAttribute("Message");
		String flag=request.getParameter("flag");
		
		if(flag==null){
			out.println();
		}
		else if(flag!=null || flag.equals("verify")){
				if(message==null || flag.equals("logout")){
					out.println();
				}
				else if(message.equals(message)){
					out.println(message);
				}
				else {
					out.println();
				}
			
				 session.removeAttribute("Message"); 
		}
		
		%>
	</p>

</div>

 
 <div class="passcontainer">
<section class="vh-100 gradient-custom" style="background-color: whitesmoke;" >
  <div class="container py-5 h-100" style="background-color: whitesmoke;">
    <div class="row justify-content-center align-items-center h-100" style="background: whitesmoke;">
      <div class="col-12 col-lg-9 col-xl-7" style="background-color: whitesmoke;">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;border:none;background: white;box-shadow: 0px 4px 22px -6px rgba(0,0,0,0.75);" >
          <div class="card-body p-4 p-md-5" style="background-color: white;border-radius: 15px;border:none;">
                        <form  action="verify.jsp" >

					<h2 style="text-align:center;color: blue;margin-top: -30px;">Login</h2>
					<br>
                  <div class="form-outline" style="background-color: white;">
                    <label class="form-label" for="uname"><i class="fa-solid fa-user"></i> User Name:</label>
                    <input  type="text" id="oldpass" name="UserName1"  class="form-control form-control-lg" style="width:100%" autocomplete="off" required/>
                

                </div>
				<br>
                  <div class="form-outline" style="background-color: white;">
                    <label class="form-label" for="pass"><i class="fa-solid fa-lock"></i> Password:</label>
                    <input type="password" id="newpass" name="Password1" class="form-control form-control-lg" required/>
                     
                </div>
               
                <div class="mt-4 pt-2 text-center" style="background-color: white;">
                <input class="btn btn-primary btn-lg " style="margin-bottom:-20px;" type="submit" value="LOGIN" />
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