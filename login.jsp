<%-- 
    Document   : login
    Created on : Aug 3, 2016, 11:27:08 PM
    Author     : Ravi kumar patel
--%>

<%-- 
    Document   : login
    Created on : Jul 30, 2016, 11:14:14 AM
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
       
        session.setAttribute("userid", userid);
        session.setAttribute("password", pwd);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
       
        
        
        response.sendRedirect("mainpage.jsp");
    
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }

}
    catch(Exception e){
        
    }

%>
    </body>
</html>
