<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
	border-radius: 25px;
}
</style>
</head>
<body>
<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
  <div class="header-right">
    <a href="index.jsp">Home</a>
    <a class="active" href="adminLogin.jsp">Admin Login</a>
  </div>
</div>
<body>
<div class="container">
<br>
	<br>
	<%
	String msg = request.getParameter("msg");
	  if("invalid".equals(msg)){
		%>
		<center><font color="red">It has been already logged in</font></center>  
	  <%}%>
   <form action="adminLoginAction.jsp" method="post">
    <div class="form-group">
    <center><h2>UserName</h2></center>
    <input type="text" name="username" placeholder="Enter the username" required="required" />
    
    <center><h2>Password</h2></center>
    <input type="text" name="password" placeholder="Enter the password" required="required" />
    <center style="padding-top:10px"><button type="submit" style="border-radius: 25px;" class="button">Submit</button></center>
    </div>
   
   </form>

</div>
<br>
<br>
<br>
<br>
<h3><center>All Right Reserved @ BTech Days :: 2020  </center></h3>
</body>
</html>
