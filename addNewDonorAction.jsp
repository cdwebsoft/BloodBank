<%@page import="project.ConnectionProvider" %> 
<%@page import="java.sql.*"%>
<%
String convertedId = request.getParameter("id"); 
//int id = Integer.parseInt(convertedId);
//System.out.println(id);
String name = request.getParameter("name");
System.out.println(name);
String father_name = request.getParameter("father");
System.out.println(father_name);
String mother_name = request.getParameter("mother");
System.out.println(mother_name);
String mobilenumber = request.getParameter("mobilenumber");
System.out.println(mobilenumber);
String gender = request.getParameter("gender");
System.out.println(gender);
String email = request.getParameter("email");
System.out.println(email);
String bloodgroup = request.getParameter("bloodgroup");
System.out.println(bloodgroup);
String address = request.getParameter("address");
System.out.println(address);
 try{
	 int result = 0;
	 Connection con = ConnectionProvider.getcon();
	 PreparedStatement ps = con.prepareStatement("INSERT INTO donor (name, fathername, mother_name, mobilenumber, gender, email, bloodgroup, address) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");

	 //ps.setString(1,convertedId );
	 ps.setString(1,name);
	 ps.setString(2,father_name);
	 ps.setString(3,mother_name );
	 ps.setString(4,mobilenumber );
	 ps.setString(5,gender);
	 ps.setString(6,email);
	 ps.setString(7,bloodgroup);
	 ps.setString(8,address);
	 result= ps.executeUpdate();
	 System.out.println(ps);
	 if(result>0){
	      response.sendRedirect("addNewDonor.jsp?msg=valid");
	      }else{
	      response.sendRedirect("addNewDonor.jsp?msg=invalid");
	      }
	 
 }catch(Exception e){
	 System.out.println(e); 
 }



%>