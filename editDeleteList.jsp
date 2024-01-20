<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@ include file="header.html"%>
<html>
<head>
<style>
#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 95%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}
</style>
</head>
<body>
	<br>
	<center>
		<%
    String msg = request.getParameter("msg");
    if ("valid".equals(msg)) {
%>
		<center>
			<font color="red" size="5">Successfully Updated</font>
		</center>
		<%
    }
%>
		<%
    if ("invalid".equals(msg)) {
%>
		<center>
			<font color="red" size="5">Something went Wrong! Try Again</font>
		</center>
		<%
    }
%>
		<%
    if ("deleted".equals(msg)) {
%>
		<center>
			<font color="red" size="5">Successfully Deleted</font>
		</center>
		<%
    }
%>
	</center>
	<center>
		<table id="customers">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Father Name</th>
				<th>Mother Name</th>
				<th>Mobile no.</th>
				<th>Email</th>
				<th>Gender</th>
				<th>Blood Group</th>
				<th>Address</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<%
   try{
	  Connection con = ConnectionProvider.getcon();
      Statement st = con.createStatement();
      String query ="select*from donor";
	  PreparedStatement ps = con.prepareStatement(query);
      ResultSet rs = ps.executeQuery();
      
      while (rs.next()){  	  
%>
			<tr>
				<td><%= rs.getInt(1) %></td>
				<td><%= rs.getString(2) %></td>
				<td><%= rs.getString(3) %></td>
				<td><%= rs.getString(4) %></td>
				<td><%= rs.getString(5) %></td>
				<td><%= rs.getString(6) %></td>
				<td><%= rs.getString(7) %></td>
				<td><%= rs.getString(8) %></td>
				<td><%= rs.getString(9) %></td>
				<td><a href="updateDonor.jsp?id=<%= rs.getString(1) %>">Edit</a></td>
				<td><a href="deleteDonor.jsp?id=<%= rs.getString(1) %>">Delete</a></td>
			</tr>
			<%
      }
   } catch (Exception e) {
      e.printStackTrace();
   }
%>
		</table>
	</center>
	<br>
	<br>
	<br>
	<br>
	<h3>
		<center>All Rights Reserved @ BTech Days :: 2020</center>
	</h3>
</body>
</html>
