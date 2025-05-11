<%-- 
    Document   : va
    Created on : May 1, 2025, 8:19:07 PM
    Author     : General_user
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="entities.Admin"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Announcements Page</title>
    </head>
    <body>
        <h1>Announcements Page</h1>
        <% 
             
        List<Admin> residents = (List<Admin>) request.getAttribute("admins");
        
           for(Admin a:residents){
        %>
             
             <table>
                <tr>
                    <td>Name Of Admin:</td>
                    <td><%=a.getName() %></td>
                </tr>
                <% 
        List<Admin> announcement=new ArrayList<>();
        
           for(Admin an:announcement){
        %>
                <tr>
                    <td>Announcements:</td>
                    <td><%=an.getAnnouncements()%></td>
                </tr>
                
                <%}%>
            </table>
             <%}%>
             
    </body>
</html>
