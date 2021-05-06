<%-- 
    Document   : lab3form
    Created on : 22 апр. 2021 г., 21:22:11
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
        <h1>Insert n and k</h1>
        
        <div>
            <form action="./lab3" method="post">
            
                <input type="text" name="k" placeholder="enter k as ##">
                
                <input type="text" name="n" placeholder="enter n as ##">
                <input type="submit" value="Ok">
            </form>
        </div>
        
    </body>
</html>
