<%@page import="project.ConnectionProvider" %> 
<%@page import="java.sql.*"%>
<%
   String username = request.getParameter("username");
   String password = request.getParameter("password");
   String dbUsername = null;
   String dbPassword = null;
   boolean valid = false;

   try {

	   Connection con = ConnectionProvider.getcon();
       // Check if there is an admin user in the admin_credentials table
       String selectQuery = "SELECT username, password FROM admin";
       PreparedStatement selectPreparedStatement = con.prepareStatement(selectQuery);
       System.out.println("--------------"+selectPreparedStatement);
       ResultSet resultSet = selectPreparedStatement.executeQuery();
   
       if (resultSet.next()) {
           // Admin user already exists in the database
           dbUsername = resultSet.getString("username");
           dbPassword = resultSet.getString("password");

           // Check if the provided username and password match the admin credentials
           if (username.equals(dbUsername) && password.equals(dbPassword)) {
               valid = true;
           }
       } else {
           // Admin user doesn't exist, so insert the provided username and password
           String insertQuery = "INSERT INTO admin(username, password) VALUES (?, ?)";
           PreparedStatement insertPreparedStatement = con.prepareStatement(insertQuery);
           insertPreparedStatement.setString(1, username);
           insertPreparedStatement.setString(2, password);
          System.out.println(insertPreparedStatement);
           int rowsAffected = insertPreparedStatement.executeUpdate();

           if (rowsAffected > 0) {
               // The username and password were successfully inserted
               valid = true;
           }
       }

       // Close the database connection
       con.close();
   } catch (Exception e) {
       e.printStackTrace();
   }

   if (valid) {
       response.sendRedirect("home.jsp");
   } else {
       response.sendRedirect("adminLogin.jsp?msg=invalid");
   }
%>
