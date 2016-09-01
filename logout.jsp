<%-- 
    Document   : logout
    Created on : Jul 30, 2016, 11:18:26 AM
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
        <%
            try{
        session.setAttribute("userid", null);
        session.invalidate();
        response.sendRedirect("index.jsp");
       }
            catch(Exception e){
                
            }
        
        %>
    </body>
</html>
