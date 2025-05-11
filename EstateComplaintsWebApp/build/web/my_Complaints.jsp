<%-- 
    Document   : my_Complaints
    Created on : May 11, 2025, 5:36:57 PM
    Author     : General_user
--%>

<%@page import="entities.User"%>
<%@page import="java.util.List"%>
<%@page import="entities.Complaint"%>
<%@page import="entities.Resident"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaints Summary Page</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
          <%
        User u =(User) session.getAttribute("user");
        Resident r =(Resident) u;
        
        %>
        
        <table>
                <tr>
                    <td>Name of Resident:</td>
                    <td><%=r.getName() %></td>
                </tr>
             
                <% 
        List<Complaint> complaints = r.getComplaints();
        
           for(Complaint c:complaints){
        %>
                <tr>
                    <td>Title:</td>
                    <td><%=c.getProblemType() %></td>
                </tr>
                <tr>
                    <td>Description:</td>
                    <td><%=c.getDescription() %></td>
                </tr>
                <tr>
                    <td>Feedback:</td>
                    <td><%=c.getFeedback() %></td>
                </tr>
                <%}%>
                
            </table>
    </body>
</html>
