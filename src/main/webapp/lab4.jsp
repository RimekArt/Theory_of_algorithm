<%-- 
    Document   : lab4
    Created on : 25 мая 2021 г., 16:55:31
    Author     : 1
--%>

<%@page import="knu.fit.ist.ta.lab4.TextProcessor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>This is Lab4</h1>
        <p> <%! TextProcessor textProcessor = new TextProcessor(
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
                +"monitoring and maintaining supplies.");%></p>
        <p><b>Text:</b> <%= textProcessor.GetText()%></p>
        <p><b>Text:</b> <%= textProcessor.GetClearedText()%></p>
        <p><b>Number of words:</b> <%= textProcessor.GetWordsNumber()%></p>
        <p><b>Number of unique words:</b> <%= textProcessor.GetUniqueWordsNumber()%></p>
        <p><b>Most popular words(8):</b> <%= textProcessor.GetFirstNMostPopularWords(8)%></p>
        <p><b>Number of words that do not contain letter (x):</b>
            <%= textProcessor.GetNumberOfWordsThatNotContain('x')%></p>
        <p><b>Number of words that contain 2 similar letters (2):</b>
            <%= textProcessor.GetNumberOfWordsThatContainSimilarLetters(2)%></p>
        <p><b>Most popular sequences (3):</b>
            <%= textProcessor.MostPopularSequences(3, 2)%></p>
        <div>
            <form action="index.jsp">
                <input type="submit" value="Home">
            </form> 
        </div>
    </body>
</html>
