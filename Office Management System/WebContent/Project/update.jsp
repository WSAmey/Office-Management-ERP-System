<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Logic</title>
</head>
<body>


<%

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/officemang","root","root"); 
	Statement st1 = con1.createStatement(); 
	String flag=request.getParameter("flag");

	if(flag.equals("employee")){
		int id=Integer.parseInt(request.getParameter("id"));
		String fname2=request.getParameter("fname");
		String lname2=request.getParameter("lname");
		String address=request.getParameter("address");
		String uname4=request.getParameter("uname");
		String city=request.getParameter("city");

		String pincode=request.getParameter("pincode");
		String phoneno=request.getParameter("phnum");
		String salary=request.getParameter("salary");
		String aadhaarno=request.getParameter("aadharno");
		String email=request.getParameter("email");
		String jobrole=request.getParameter("jobrole");
		
		session.setAttribute("updatemsg", "Record Updated successfully!");
	st1.executeUpdate("update employees set fname='"+fname2+"',lname='"+lname2+"',address='"+address+"',uname='"+uname4+"',city='"+city+"',pincode='"+pincode+"',phoneno='"+phoneno+"',salary='"+salary+"',aadharno='"+aadhaarno+"',email='"+email+"',jobrole='"+jobrole+"' where id='"+id+"'");
	response.sendRedirect("viewEmployees.jsp");
	}

	if(flag.equals("yourtask")){
		int id=Integer.parseInt(request.getParameter("id"));
		System.out.println("Your Task");
		System.out.println(id);
		
		String status =request.getParameter("status");
		String taskdesc = request.getParameter("taskdesc");
		String taskupdate= request.getParameter("taskupdate");
		String category = request.getParameter("category");
		String priority = request.getParameter("priority");
		String fromdate = request.getParameter("fromdate");
		String todate = request.getParameter("todate");
		String assignedby = request.getParameter("assignedby");
		String toemp = request.getParameter("toemp");
		String whours = request.getParameter("whours");
		//System.out.println("Your task whours: "+whours);
		session.setAttribute("updatemsg", "Record Updated successfully!");
		String result1;
		ResultSet rwhr1 = st1.executeQuery("select whours from todo where taskid='"+id+"' ");
		rwhr1.next();
			int value1=Integer.parseInt(rwhr1.getString("whours"))+Integer.parseInt(whours);
			System.out.println(value1);
			result1=String.valueOf(value1);
			//System.out.println("result= "+result1);
		
		st1.executeUpdate("update todo set taskstatus='"+status+"',taskdesc='"+taskdesc+"',category='"+category+"',priority='"+priority+"',fromdate='"+fromdate+"',todate='"+todate+"',toemp='"+toemp+"',whours='"+result1+"',taskupdate='"+taskupdate+"' where taskid='"+id+"'");
		response.sendRedirect("viewyourtask.jsp?flag=update");
	}
	
	if(flag.equals("broadcast")){
		int id = Integer.parseInt(request.getParameter("id"));
		String broaddesc = request.getParameter("broaddesc");
		String fromdate = request.getParameter("fromdate");
		
		st1.executeUpdate("update broadcast set broaddesc='"+broaddesc+"',fromdate='"+fromdate+"' where id='"+id+"'");
		response.sendRedirect("viewbroadcast.jsp");
	}
	if(flag.equals("emptask")){
		System.out.println("Update task");
		int id=Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		String status =request.getParameter("status");
		String taskdesc = request.getParameter("taskdesc");
		String taskupdate = request.getParameter("taskupdate");
		String category = request.getParameter("category");
		String priority = request.getParameter("priority");
		String fromdate = request.getParameter("fromdate");
		String todate = request.getParameter("todate");
		String assignedby = request.getParameter("assignedby");
		String toemp = request.getParameter("toemp");
		String whours = request.getParameter("whours");
		session.setAttribute("updatemsg", "Record Updated successfully!");
		ResultSet rwhr = st1.executeQuery("select whours from task where taskid='"+id+"'");
		String result;
		rwhr.next();
		//System.out.println("in empview");
		//System.out.println("whours: "+whours);
			int value=Integer.parseInt(rwhr.getString("whours"))+Integer.parseInt(whours);
			System.out.println("value: "+value);
			result=String.valueOf(value);
			System.out.println("result= "+result);
			System.out.println(result);
		st1.executeUpdate("update task set taskstatus='"+status+"',taskdesc='"+taskdesc+"',category='"+category+"',priority='"+priority+"',fromdate='"+fromdate+"',todate='"+todate+"',assignedby='"+assignedby+"',toemp='"+toemp+"',whours='"+result+"',taskupdate='"+taskupdate+"' where taskid='"+id+"'");
		response.sendRedirect("empviewtask.jsp?flag=update");
	}
	st1.close();
	con1.close();
}
catch(Exception e){
	
	out.println(e);
	System.out.println(e);
	
}

%>
</body>
</html>