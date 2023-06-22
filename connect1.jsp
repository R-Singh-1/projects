<%@page import="java.sql.*"%>
<%String e1, e2, e3, e4, e5, e6;
e1=request.getParameter("f1");
e2=request.getParameter("f2");
e3=request.getParameter("f3");
e4=request.getParameter("f4");
e5=request.getParameter("f5");
e6=request.getParameter("f6");
try
               {Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/sample","app","app");
                PreparedStatement stat=con.prepareStatement("insert into signup values(?,?,?,?,?,?)");
                stat.setString(1,e1);
                stat.setString(2,e2);
                stat.setString(3,e3);
                stat.setString(4,e4);
                stat.setString(5,e5);
                stat.setString(6,e6);
                stat.executeUpdate();
                out.println("Data inserted successfully");
                               }
catch(Exception e)
               {
    //out.println(e);
    
}
%>

<%
e5=request.getParameter("t11");
e6=request.getParameter("t22");
try { 
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/sample", "app", "app");
        Statement stat = con.createStatement();
       String query = "SELECT * FROM SIGNUP WHERE EMAIL='" + e5 + "' AND PASSWORD='" + e6 + "'";
       
       ResultSet rs= stat.executeQuery(query);
        
        if(rs.next()){
            response.sendRedirect("userindex.html");
        }
             else{
           RequestDispatcher dispatcher = request.getRequestDispatcher("sign-in.html");
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


