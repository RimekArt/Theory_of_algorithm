<%-- 
    Document   : index
    Created on : 21 апр. 2021 г., 20:23:41
    Author     : 1
--%>

<%@page import="knu.fit.ist.ta.exam.Results"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TA Start</title>
    </head>
    <body>
        <h1>Rimek Artem IP-11</h1>
        <p>Exam #18</p>
        <p>Formula:F(x)=7/(7x-5)</p> 
        <form action="./formula" method="post" class="form-inline">
            <label for="x"><b>Enter x:</b></label>
            <div class="input-group">
                <input  class="form-control" id="x" type="text" name="x"/>
                <input class="btn btn-success" type="submit" value="Submit"/>
            </div>
            <p class="mt-3 mb-0"><b></b><%=request.getAttribute("result")%></p>
        </form>
        <%! Results fr = new Results(69); %>
        <p>Args: <%= fr.GetArgs()%> </p>
        <p>Results:<%= fr.Calculate() %></p>
        
    </body>
</html>

