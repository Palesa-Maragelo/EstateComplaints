<%-- 
    Document   : viewComplaints
    Created on : 29 Apr 2025, 6:31:29 PM
    Author     : Palesa
--%>

<%@page import="entities.Complaint"%>
<%@page import="java.util.List"%>
<%@page import="entities.Resident"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Complaints Page</title>
         <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <h1>View Complaints Page</h1>
        <% 
        List<Resident> residents = (List<Resident>) request.getAttribute("residents");
        
           for(Resident r:residents){
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
                    <form action="ControllerServlet.do" method="post">
                    <td><input type="hidden" name="c_id" value="<%=c.getId() %>"></td>
                    <td><input type="hidden" name="operation" value="givefeedback"></td>
                    <td><input type="submit" value="GIVE FEEDBACK"></td>
                    <td><input type="hidden" name="r_id" value="<%=r.getId() %>"></td>
                    </form>
                </tr>
                <%}%>
            </table>
             <%}%>
        
    </body>
</html>
