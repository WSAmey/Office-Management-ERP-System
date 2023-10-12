<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Registration</title>
</head>

<style>
body {
	background: whitesmoke;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	flex-direction: column;
}

*{
	font-family: sans-serif;
	box-sizing: border-box;
}

form {
	width: 500px;
	padding: 30px;
	background: #fff;
	box-shadow: 0px 4px 22px -6px rgba(0,0,0,0.75);
	border-radius: 7px;
}

h2 {
	text-align: center;
	margin-bottom: 40px;
	color: blue;
	font-weight: bold;
}

input {
	display: block;
	border: 2px solid #ccc;
	width: 95%;
	padding: 5px;
	margin: 0px auto;
	border-radius: 5px;
}
label {
	color: #888;
	font-size: 18px;
	padding: 5px;
}

button {
	float: left; 
	margin-left: 12.5px;
	justify-content: center;
  	align-items: center;
	background: blue;
	padding: 10px 15px;
	color: white;
	border-radius: 5px;
/* 	margin-right: 10px */;
	border: none;
}
button:hover{
	opacity: .7;
}
.error {
   background: #F2DEDE;
   color: #A94442;
   padding: 10px;
   width: 95%;
   border-radius: 5px;
   margin: 20px auto;
}

h1 {
	text-align: center;
	color: #fff;
}

a {
	float: right;
	background: #555;
	padding: 10px 15px;
	color: #fff;
	border-radius: 5px;
	margin-right: 10px;
	border: none;
	text-decoration: none;
}
a:hover{
	opacity: .7;
}
</style> 
<body>


       <form action="#" method="post">
     	<h2>Register</h2>
    
   	    <label>Full Name: </label>
     	<input type="text" name="FullName" placeholder="Your full name"><br>
    	
    	 <label>User Role: </label>
     	<input type="text" name="UserRole" placeholder="Your role"><br>
    	
     	<label>User Name: </label>
     	<input type="text" name="UserName" placeholder="User Name"><br>

     	<label>Password: </label>
     	<input type="password" name="Password" placeholder="Password"><br>

     	<button type="submit">Register</button>
     </form>

</body>
</html>