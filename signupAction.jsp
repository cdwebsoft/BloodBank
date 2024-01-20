<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String phone = request.getParameter("number");
String address = request.getParameter("address");
String email = request.getParameter("email");
String password = request.getParameter("password");
String name = firstname+" "+lastname;
try{
	 Connection con = ConnectionProvider.getcon();
	 String query ="Insert into user values(?,?,?,?,?)";
	 PreparedStatement ps = con.prepareStatement(query);
	 ps.setString(1, name);
	 ps.setString(2, phone);
	 ps.setString(3, address);
	 ps.setString(4, email);
	 ps.setString(5, password);
	 System.out.println(ps);
	 ps.executeUpdate();
	 System.out.println(ps);
	 response.sendRedirect("signup.jsp?msg=valid");
	
}catch(Exception e){
	e.printStackTrace();
	response.sendRedirect("signup.jsp?msg=Invalid");

	
}

%>