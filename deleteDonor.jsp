<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String id=request.getParameter("id");
try {
	Connection con = ConnectionProvider.getcon();
	String selectQuery = "Delete from donor where id=?";
	PreparedStatement ps = con.prepareStatement(selectQuery);
	ps.setString(1, id);
	ps.executeUpdate();
	response.sendRedirect("editDeleteList.jsp?msg=deleted");
} catch (Exception e) {
	response.sendRedirect("editDeleteList.jsp?msg=invalid");

}

%>