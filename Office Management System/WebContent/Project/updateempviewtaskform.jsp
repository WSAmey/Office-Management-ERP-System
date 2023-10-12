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

#tstatus{
	width:100%;
	
}
#whours{
	width:100%;
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
.upd_h2 , h3{
	text-align:center;
		color: blueviolet;
		
}
.msg,h4{
		color: green;
		text-align: center;
		background-color: white;
}


</style>

<body>

<%@ include file="header1.jsp"%>
<br>
<%

	int id = Integer.parseInt(request.getParameter("id"));
String taskdesc = request.getParameter("taskdesc");
String taskupdate = request.getParameter("taskupdate");
String category = request.getParameter("category");
String priority = request.getParameter("priority");
String status = request.getParameter("status");
String fromdate = request.getParameter("fromdate");
String todate = request.getParameter("todate");
String assignedby = request.getParameter("assignedby");
String toemp = request.getParameter("toemp");
String whours = request.getParameter("whours");

%>
            <h3 class="upd_h2">Update Task</h3>
	<div class="msg">
	
	</div>

	<section class="vh-100 gradient-custom" >
  <div class="container py-5 h-100" style="background-color: whitesmoke">
    <div class="row justify-content-center align-items-center h-100" style="background: whitesmoke;">
      <div class="col-12 col-lg-9 col-xl-7" style="background-color: whitesmoke;">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;border:none; width: 1434px; margin-left: -335px;" >
          <div class="card-body p-4 p-md-5" style="background-color: white;border-radius: 15px;">
            
            
            <form  action="update.jsp" >
				<input name="flag" value="emptask" type="hidden">
              <div class="row" style="background-color: white;">
              
              <input type="hidden" value="<%= id %>" id="id" name="id" class="form-control form-control-lg"/>
              </div>

              <div class="row" style="background-color: white;">
                <div class="col-12" style="background-color: white;">
                  <label class="form-label select-label">To Employee: </label>
                  <select class="select form-control-lg w-100" name="toemp" style="pointer-events:none;">
					<option value="<%= toemp %>"><%= toemp %></option>                   
                  </select>
                </div>
                </div>
					<br>
              <div class="row" style="background-color: white;">
					<div class="col-12" style="background-color: white;">
                  <label class="form-label select-label">From Employee: </label>
                  <select class="select form-control-lg w-100" name="assignedby" style="pointer-events:none;">
					<option value="<%= assignedby %>"><%= assignedby %></option>                   
                  </select>
                </div>
                </div>
                <br>
                              <div class="row" style="background-color: white;">
                					<div class="col-12" style="background-color: white;">
                
                     <label class="form-label" for="taskdescription">Task Description</label>
			<div class="form-floating" style="background-color: white;">
  			<textarea class="form-control form-control-lg w-100" name="taskdesc" id="floatingTextarea2" style="height: 65px;pointer-events:none;"  ><%= taskdesc %></textarea>
			</div>
			</div>
			</div>
		<br>
              <div class="row" style="background-color: white;">
                <div class="col-12" style="background-color: white;">

                  <label class="form-label select-label">Category: </label>
                  <select class="select form-control-lg w-100 " style="pointer-events:none;" name="category">
                    <option value="<%= category %>" ><%= category %></option>
                  </select>
				</div>
                </div>
                <br>
                              <div class="row" style="background-color: white;">                              
        
                <div class="col-12" style="background-color: white;">
                  <label class="form-label select-label">Priority level: </label>
                  <select class="select form-control-lg w-100" style="pointer-events:none;" name="priority">
                    <option value="<%= priority %>" ><%= priority %></option>
                  </select>
                </div>
                </div>
                	<br>
       <!-- code for date picker  -->
       
        <div class="row" style="background-color: white;">
                <div class="col-12" style="background-color: white;">

                  <div class="form-outline" style="background-color: white;">
                    <label class="form-label" for="fromDate"> From Date:</label>
                    
                    <input type="date" id="my_date_picker" style="pointer-events:none;" class="form-control form-control-lg w-100" name="fromdate" autocomplete="off" value="<%= fromdate %>"/>
                
                  </div>
				</div>
                </div>
                <br>
                        <div class="row" style="background-color: white;">
                
                <div class="col-12" style="background-color: white;">

                  <div class="form-outline" style="background-color: white;">
                    <label class="form-label" for="lastName">To Date:</label>
                    <input type="date" id="my_date_picker1" style="pointer-events:none;" class="form-control form-control-lg" name="todate" autocomplete="off" value="<%= todate %>"/>
                    
                  </div>

                </div>
              </div>
              <br>
             
      				 <div class="row" style="background-color: white;">
                					<div class="col-12" style="background-color: white;">
                
                     <label class="form-label" for="taskdescription">Work Notes</label>
			<div class="form-floating" style="background-color: white;">
  			<textarea class="form-control form-control-lg w-100" name="taskupdate" id="floatingTextarea2" style="height: 65px;" ><%= taskupdate %></textarea>
			</div>
			</div>
			</div>
                      <br>
              <div class="row" style="background-color: white;">       
                      
              <div class="col-12" style="background-color: white;">
                  <label class="form-label select-label">Task Status: </label>
                  <select class="select form-control-lg " id="tstatus" name="status">
<%--                     <option value="<%= status%>"><%= status %></option> <!--status Pending will be retrieved on request from update button of view your task table-->
 --%>                    <option value="In Progress">In Progress</option>
                    <option value="Completed">Completed</option>
                  </select>
                 </div>
                 </div>
                 <br>
                               <div class="row" style="background-color: white;">       
                 	
                  <div class="col-12" style="background-color: white;">
                  <label class="form-label select-label">Worked Hours: </label>
                  <select class="select form-control-lg " id="whours" name="whours" required>
                    <option value="<%=whours %>"><%=whours %></option>
                    <option value="0">0</option> 
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                    
                  </select>
                	</div>
                  </div>
                  
				<div class="mt-4 pt-2 text-center"
								style="background-color: white;">
								<input class="btn btn-primary btn-lg" 
									style="float: left; margin-bottom: -12px;" type="submit"
									value="UPDATE " />
							</div>
								<div class="mt-4 pt-2 float-right"
									style="background-color: white;">
									<a class="btn btn-danger btn-lg "
										Style="text-decoration: none; float: right; margin-top: -29px;"
										href="empviewtask.jsp?flag=cancel">CANCEL</a>
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