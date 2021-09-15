<%-- 
    Document   : otra
    Created on : Sep 15, 2021, 12:40:40 PM
    Author     : juriel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Otra Pagina</h1>
         <%
            
         String var = request.getParameter("variable");
         if (var != null){
             out.print("La variable "+var);
         }
            
        %>  
    </body>
</html>
