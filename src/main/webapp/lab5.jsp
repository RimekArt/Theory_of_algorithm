<%-- 
    Document   : lab5
    Created on : 27 мая 2021 г., 23:05:07
    Author     : 1
--%>

<%@page import="knu.fit.ist.ta.lab5.Part1"%>
<%@page import="knu.fit.ist.ta.lab5.Part2"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <div class="container">
            <form action="index.jsp">
                <input type="submit" value="Home">
            </form>
            <h1>This is Lab5</h1>
            <div class="mt-5" id="laba">
                <%! Part1 part1 = new Part1(
                   "IoT is tagging our day-to-day objects with machine-readable"
                +"identification tags. Sensors may be a couple with these tags "
                +"to collect more information about the condition the everyday "
                +"objects and those present around them"
                +"The time is not that far when you are out of home and your "
                +"computers at home contact you to let you know that your "
                +"medicines have expired or that the milk is over or you need "
                +"more pepper. This isn’t just a fantasy but soon to be a "
                +"reality due to the amazing possibilities of the Internet of "
                + "Things (IoT)."
                +"IoT is tagging our day-to-day objects with machine-readable "
                +"identification tags. Sensors may be a couple with these tags "
                +"to collect more information about the condition the everyday "
                +"objects and those present around them. The same applies to "
                +"various companies wherein the computers would keep track of "
                +"the stock available and resources and maintain them to optimum"
                +"levels, thus saving a lot of time and money."
                +"Before we understand the impact IoT can have on our way of "
                +"living, it’s important to go through its advantages and "
                +"disadvantages: Advantages, here are some advantages of IoT:"
                +"Here are some advantages of IoT:"
                +"1. Data: The more the information, the easier it is to make "
                +"the right decision. Knowing what to get from the grocery while"
                +"you are out, without having to check on your own, not only "
                +"saves time but is convenient as well."
                +"2. Tracking: The computers keep a track both on the quality "
                +"and the viability of things at home. Knowing the expiration "
                +"date of products before one consumes them improves safety and "
                +"quality of life. Also, you will never run out of anything when"
                +"you need it at the last moment."
                +"3. Time: The amount of time saved in monitoring and the number:"
                +"of trips done otherwise would be tremendous."
                +"4. Money: The financial aspect is the best advantage. This "
                +"technology could replace humans who are in charge of "
                +"monitoring and maintaining supplies.");%>
                <p><b>Text:</b> <%= part1.GetText()%></p>
                <form action="./lab5" method="post" class="form-inline">
                    <label for="x"><b>Enter word to search for: </b></label>
                    <div class="input-group">
                        <input  class="form-control" id="find" type="text" name="find"/>
                        <input class="btn btn-success" type="submit" value="Submit"/>
                    </div>
                    <p class="mt-3 mb-0"><b>Word number: </b><%=request.getAttribute("result")%></p>
                </form>
                <p><b>Most popular words:</b> <%= part1.GetMostPopularWords()%></p>
                <p><b>Most popular sequences (4):</b>
                    <%= part1.MostPopularSequences(4)%></p>
                <%! Part2 part2 = new Part2(20); %>
                <% part2.InitList(); %>
                <p><b>List: </b><br/> <%= part2.DisplayList()%></p>
                <%! String find = "model #8"; %>
                <p><b>Index of element with value</b> <%= find %>: <%= part2.IndexOf(find)%></p>
                <% part2.SortByStringField();%>
                <p><b>Sorted by string field: </b><br/> <%= part2.DisplayList()%></p>
                <p><b>Index of element with value </b><%= find %>: <%= part2.IndexOf(find)%></p>
                <% part2.SortByLongField();%>
                <p><b>Sorted by long field: </b><br/> <%= part2.DisplayList()%></p>
                <p><b>Index of element with value </b><%= find %>: <%= part2.IndexOf(find)%></p>
            </div>
        </div>
    </body>
</html>
