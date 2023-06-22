<%@page import="java.sql.*"%>
<%String a1, a2, a3, a4;
a1=request.getParameter("t1");
a2=request.getParameter("t2");
a3=request.getParameter("t3");
a4=request.getParameter("t4");
try
               {Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/sample","app","app");
                PreparedStatement stat=con.prepareStatement("insert into contact_us values(?,?,?,?)");
                stat.setString(1,a1);
                stat.setString(2,a2);
                stat.setString(3,a3);
                stat.setString(4,a4);
                stat.executeUpdate();
                out.println("Data inserted successfully");
                               }
catch(Exception e)
               {
    //out.println(e);
    
}
%>

<%String b1, b2, b3, b4, b5, b6, b7, b8;
b1=request.getParameter("v1");
b2=request.getParameter("v2");
b3=request.getParameter("v3");
b4=request.getParameter("v4");
b5=request.getParameter("v5");
b6=request.getParameter("v6");
b7=request.getParameter("v7");
b8=request.getParameter("v8");
try
               {Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/sample","app","app");
                PreparedStatement stat=con.prepareStatement("insert into enrollment values(?,?,?,?,?,?,?,?)");
                stat.setString(1,b1);
                stat.setString(2,b2);
                stat.setString(3,b3);
                stat.setString(4,b4);
                stat.setString(5,b5);
                stat.setString(6,b6);
                stat.setString(7,b7);
                stat.setString(8,b8);
                stat.executeUpdate();
                response.sendRedirect("payment.html");
                               }
catch(Exception e)
               {
    //out.println(e);
    
}
%>

<%String c1, c2, c3, c4;
c1=request.getParameter("r1");
c2=request.getParameter("r2");
c3=request.getParameter("r3");
c4=request.getParameter("r4");
try
               {Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/sample","app","app");
                PreparedStatement stat=con.prepareStatement("insert into bmi values(?,?,?,?)");
                stat.setString(1,c1);
                stat.setString(2,c2);
                stat.setString(3,c3);
                stat.setString(4,c4);
                stat.executeUpdate();
                out.println("Data inserted successfully");
                               }
catch(Exception e)
               {
    //out.println(e);
    
}
%>



