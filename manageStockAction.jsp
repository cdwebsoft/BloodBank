
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String bloodgroup = request.getParameter("bloodgroup");
String incdec = request.getParameter("incdec");
String units = request.getParameter("units");
int units1 = Integer.parseInt(units);
System.out.println(bloodgroup+" "+incdec+" "+ units1);
try {
	Connection con=ConnectionProvider.getcon();
    Statement st = con.createStatement();
    
    if (incdec.equals("inc")) {
        st.executeUpdate("UPDATE stock SET units = units + " + units1 + " WHERE bloodgroup = '" + bloodgroup + "'");
        response.sendRedirect("manageStock.jsp?msg=valid");
    } else {
        st.executeUpdate("UPDATE stock SET units = units - " + units1 + " WHERE bloodgroup = '" + bloodgroup + "'");
        response.sendRedirect("manageStock.jsp?msg=valid");
     
    }
    
   
} catch (Exception e) {
    response.sendRedirect("managestock.jsp?msg=invalid");
}
%>
