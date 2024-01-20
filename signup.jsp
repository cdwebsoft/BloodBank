<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="signup-style.css">
<title>Signup/Register</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form  action="signupAction.jsp" method="post">
     <input type="text"   name="firstname"  placeholder="Enter the first name"  required/>  
     <input type="text"   name="lastname"  placeholder="Enter the last name"  required/> 
     <input type="number"   name="number"  placeholder="Enter the number" required/> 
     <input type="text"   name="address"  placeholder="Enter your address" required/>  
     <input type="email"   name="email"  placeholder="Enter the email" required/>
     <input type="password"   name="password"  placeholder="Enter the password" required/>
     <input type="submit" value="signup" />
    
        </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
 <%
    String msg = request.getParameter("msg");
   if("valid".equals(msg)){
 %>
 <h1>Successfully Register</h1>
 <%}%>
<% 
   if("Invalid".equals(msg)){
 %>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>Blood Bank</h2>
    <p>Whole blood donation is the most common type of blood donation. During this donation, you donate about a pint (about half a liter) of whole blood. The blood is then separated into its components — red cells, plasma and sometimes platelets.</p>
  </div>
</div>

</body>
</html>