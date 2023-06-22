<%@page import="java.sql.*"%>
<%String a35,a36;
a35=request.getParameter("t35");
a36=request.getParameter("t36");

try { 
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/sample", "app", "app");
        Statement stat = con.createStatement();
       String query = "SELECT * FROM ADMIN WHERE EMAIL='" + a35 + "' AND PASSWORD='" + a36 + "'";
       
       ResultSet rs= stat.executeQuery(query);
        
        if(rs.next()){
            response.sendRedirect("indexadmin.jsp");
        }
             else{
           RequestDispatcher dispatcher = request.getRequestDispatcher("admin-login.html");
           request.setAttribute("errorMessage", "Invalid username or password");
           dispatcher.forward(request, response);
             }
           
        rs.close();
        stat.close();
        

        
        //response.sendRedirect("index.html");
              }
 
 catch (Exception e)
         {
       // out.println(e);
    }

%>