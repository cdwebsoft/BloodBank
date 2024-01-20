
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="signup-style.css">
<title>Login/SignINx</title>
<style type="text/css">
.textremove{
	text-decoration: none;
}
</style>
</head>
<body>
<div id='container'>
  <div class='signup'>
          <form action="loginAction.jsp"  method="post">
          <input type="email" name="email" placeholder="Enter your email" required="required"/>
          <input type="password" name="password" placeholder="Enter your password" required="required"/>
          <input type="submit" value="login"/>
          </form>
      <h2><a class="textremove" href="signup.jsp">SignUp</a></h2>
       <h2><a class="textremove" href="forgotPassword.jsp">Forgot Password?</a></h2>
        
  </div>
  <div class='whysignLogin'>
  <% 
  String msg = request.getParameter("msg");
   if("notexist".equals(msg)){
  %>
  <h1>Incorrect Username or Password</h1>
  <%}%>
  
  <%
  if("Invaild".equals(msg)){
	  %>
  }
<h1>Some thing Went Wrong! Try Again !</h1>
 <%}%>
    <h2>Blood Bank</h2>
    
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>