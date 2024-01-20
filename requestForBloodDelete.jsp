<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=request.getParameter("email");
System.out.println(email);
 try
{
	 Connection con = ConnectionProvider.getcon();
	 String selectQuery ="Delete from bloodrequest where email=?";
     PreparedStatement ps = con.prepareStatement(selectQuery);
     System.out.println(ps);
     ps.setString(1,email);
     System.out.println(ps);
     ps.executeUpdate();
	 response.sendRedirect("requestForBlood.jsp");
}
 catch(Exception e)
 {
	 response.sendRedirect("requestForBlood.jsp");

 }
 
 %>