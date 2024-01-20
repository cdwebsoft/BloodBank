<%@include file="header.html"%>
<%@page import="project.ConnectionProvider" %> 
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="style.css" type="text/css" media="screen">
    <style>
             .cen{
                  margin-left: 650px; 
                 /*text-align: center;*/
             }
    
    
        input[type="text"], input[type="password"], input[type="email"], select, input[type="number"] {
            border: none;
            background: silver;
            height: 50px;
            font-size: 16px;
            padding: 15px;
            width: 60%;
            border-radius: 25px;
            margin-left: 20%;
        }
        h2, h1 {    
            margin-left: 20%;
        }
        hr {
            width: 60%;
        }
    </style>
</head>
<body>
<%
  int id=0;
 try{
	 Connection con = ConnectionProvider.getcon();
	 Statement st = con.createStatement();
	 ResultSet rs = st.executeQuery("Select max(id)from donor");
	 if(rs.next()){
		 id=rs.getInt(1);
		 //id=id+1;
	 }%>
	  <div class="container">
	  <h1>Donor id :<%out.println(id);%></h1>
	 <% 
 }catch(Exception e){
	 e.printStackTrace();
 }
%>
 
    <div class="container" style="margin-top:60px;">
        <form action="addNewDonorAction.jsp" method="post">
            <input type="hidden" name="id" value="<% out.println(id);%>">
            <h1 class="cen">Donor Details</h1>
            <h2>Name</h2>
            <input type="text" placeholder="Enter Your Name" name="name">
            <hr>
            <h2>Father Name</h2>
            <input type="text" placeholder="Enter Father Name" name="father">
            <hr>
            <h2>Mother Name</h2>
            <input type="text" placeholder="Enter Mother Name" name="mother">
            <hr>
            <h2>Mobile Number</h2>
            <input type="text" placeholder="Enter Mobile Number" name="mobilenumber">
            <hr>
            <h2>Gender</h2>
            <select name="gender">
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Male">Male</option>
                <option value="others">others</option>
            </select>
            <hr>
            <h2>Email</h2>
            <input type="email" placeholder="Enter email" name="email">
            <hr>
            <h2>Blood group</h2>
            <select name="bloodgroup">
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="O+">O+</option>
                <option value="O-">O-</option>
                <option value="B+">B+</option>
                <option value="B-">B-</option>
                <option value="AB-">AB-</option>
                <option value="AB+">AB+</option>
            </select>
            <hr>
            <h2>Address</h2>
            <input type="text" placeholder="Enter address" name="address">
            <br>
            <center><button type="submit" class="button">Save</button></center>
        </form>
    </div>
</div>

<br>
<br>
<br>
<br>
<h3><center>All Rights Reserved @ BTech Days :: 2020</center></h3>

</body>
</html>
