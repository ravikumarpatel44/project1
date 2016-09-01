<%-- 
    Document   : androidAPI
    Created on : Aug 28, 2016, 4:01:51 PM
    Author     : Ravi kumar patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import ="java.sql.*" %>
<%
    try{
        
    
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshoping",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from users where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
       
//            if(session.getAttribute("userid") != null && session.getAttribute("pwd") !=null){
  
        
        session.setAttribute("userid", userid);
        session.setAttribute("password", pwd);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
       
        
        
            
         out.println("200");
         out.println("\n");
         out.println("userid = " +userid );
           out.println("\n");
         out.println("password = " +pwd);
        
            
//         
//        }
//      else{
//          out.println("-1");
//      }
                
               
    
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }

}
    catch(Exception e){
        
    }

%>
    </body>
</html>

    </body>
</html>
