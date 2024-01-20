<%@page import="project.ConnectionProvider" %> 
<%@page import="java.sql.*"%>

<%
 String name = request.getParameter("name");
 System.out.println(name);
 String mail = request.getParameter("email");
 System.out.println(mail);
 String number = request.getParameter("mobilenumber");
 System.out.println(number);
 String bloodgroup = request.getParameter("bloodgroup");
 System.out.println(bloodgroup);
 String status = "Pending"; 
  
 try{
	 int result = 0;
	 Connection con = ConnectionProvider.getcon();
      String query="INSERT INTO bloodrequest(name, email,number, bloodgroup, status)VALUES (?,?,?,?,?)";
	 PreparedStatement ps =con.prepareStatement(query);
      ps.setString(1, name);
      ps.setString(2, mail);
      ps.setString(3, number);
      ps.setString(4, bloodgroup);
      ps.setString(5, status);
      System.out.println(ps);
      result= ps.executeUpdate();
      System.out.println ("----------------"+result);
      if(result>0){
      response.sendRedirect("index.jsp?msg=valid");
      }else{
    	  response.sendRedirect("index.jsp?msg=invalid");
      }
 }catch(Exception ex){
	 System.out.println(ex);
	 
 }
 



%>