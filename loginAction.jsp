<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email = request.getParameter("email");
String password = request.getParameter("password");

	  int z=0;
	  try{
	  Connection con = ConnectionProvider.getcon();
	  String query ="select * from user where email=? and password=?";
	  PreparedStatement ps = con.prepareStatement(query);
	  ps.setString(1,email);
	  ps.setString(2,password);
	  ResultSet rs = ps.executeQuery();
	  while(rs.next()){
		  z=1;
		  session.setAttribute("email", email);
		  response.sendRedirect("index.jsp");
	  }
	  if(z==0){
		 response.sendRedirect("login.jsp?msg=notexist"); 
	  }
	  }catch(Exception e ){
		 System.out.println(e);
		 response.sendRedirect("login.jsp?msg=Invaild");
	  }
 
%>