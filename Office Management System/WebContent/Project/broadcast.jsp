<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Add Broadcast</title>
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
		margin-bottom: 25px;
}
.msg,h4{
		color: green;
		text-align: center;
		margin-bottom:-99px;
		background-color: whitesmoke;
}
#my_date_picker{
	width: 1339px;
}

</style>

<body>

<%@ include file="header1.jsp"%>
<br>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/officemang","root","root"); 
Statement st1 = con1.createStatement(); 
ResultSet rs1=st1.executeQuery("select id,fname from employees order by fname ASC");

%>
            <h3 class="add_h2">Broadcast</h3>
            
	<div class="msg">
	<h4> <%
		String msg=(String)session.getAttribute("Message12");
	
		if(msg==null){
			out.println();
		}
		else{
			out.println(msg);	
		}
		session.removeAttribute("Message12");
		
	%> </h4>
	</div>

	<section class="vh-100 gradient-custom" >
  <div class="container py-5 h-100" style="background-color: whitesmoke">
    <div class="row justify-content-center align-items-center h-100" style="background: whitesmoke;">
      <div class="col-12 col-lg-9 col-xl-7" style="background-color: whitesmoke;">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;border:none;width: 1434px;margin-left: -335px;margin-top:-36px;" >
          <div class="card-body p-4 p-md-5" style="background-color: white;border-radius: 15px;border:none;">
            
            
            <form  action="insertBroadcast.jsp" >

              
					<br>
                     <label class="form-label" for="taskdescription">Description</label>
			<div class="form-floating" style="background-color: white;">
  			<textarea class="form-control form-control-lg" name="broaddesc" id="floatingTextarea2" style="height: 100px" required></textarea>
			</div>
         
                	<br>
       <!-- code for date picker  -->
       
        <div class="row" style="background-color: white;">
                <div class="col-md-6 mb-4" style="background-color: white;">

                  <div class="form-outline" style="background-color: white;">
                    <label class="form-label" for="fromDate"> From Date:</label>
                    
                    <input type="date" id="my_date_picker" class="form-control form-control-lg"  name="fromdate" autocomplete="off" required/>
                
                  </div>

                </div>
       
              </div>
      
              
              
                   <div class="mt-4 pt-2 text-center" style="background-color: white;">
                <input class="btn btn-primary btn-lg " style="float: left;margin-bottom: -12px;" type="submit" value="ADD" />
              </div>

            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

 
  
</body>

</html>