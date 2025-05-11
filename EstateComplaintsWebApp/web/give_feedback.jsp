<%-- 
    Document   : give_feedback
    Created on : May 11, 2025, 4:33:35 PM
    Author     : General_user
--%>

<%@page import="entities.Complaint"%>
<%@page import="entities.Resident"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Resident r = (Resident) request.getAttribute("resident");
        Complaint c = (Complaint) request.getAttribute("complaint");
        %>
        
        <table>
                <tr>
                    <td>name of Resident</td>
                    <td><%=r.getName() %></td>
                </tr>
             
                <tr>
                    <td>title:</td>
                    <td><%=c.getProblemType() %></td>
                </tr>
                <tr>
                    <td>description</td>
                    <td><%=c.getDescription() %></td>
                </tr>
                <tr>
                    <form action="ControllerServlet.do" method="post">
                   <td><input type="text" name="feedback" required=""></td>
                    <td><input type="submit" value="GIVE FEEDBACK"></td>
                    <td><input type="hidden" name="c_id" value="<%=c.getId() %>"></td>
                     <td><input type="hidden" name="operation" value="savefeedback"></td>
                    </form>
                </tr>
                
            </table>
    </body>
</html>
