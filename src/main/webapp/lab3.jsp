<%-- 
    Document   : lab3
    Created on : 22 апр. 2021 г., 21:21:58
    Author     : 1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <p><%=request.getAttribute("result")%></p>
        
        <div>
            <form action="lab3form.jsp">  
                <input type="submit" value="New k and n">
            </form>
        </div>
        
        <div>
            <form action="index.jsp">  
                <input type="submit" value="Home">
            </form> 
        </div>
    </body>
</html>
