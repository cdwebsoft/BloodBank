<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email = request.getParameter("email");
System.out.println(email);
try {
	Connection con = ConnectionProvider.getcon();
	String selectQuery = "Update bloodrequest set status='completed' where email=?";
	PreparedStatement ps = con.prepareStatement(selectQuery);
	ps.setString(1, email);
	ps.executeUpdate();
	response.sendRedirect("requestForBlood.jsp");
} catch (Exception e) {
	response.sendRedirect("requestForBlood.jsp");

}
%>