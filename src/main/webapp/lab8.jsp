<%-- 
    Document   : lab8
    Created on : 28 мая 2021 г., 3:20:45
    Author     : 1
--%>

<%@page import="knu.fit.ist.ta.lab8.Details"%>
<%@page import="knu.fit.ist.ta.lab8.Algorithms"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <div class="container">
            <form action="index.jsp">
                <input type="submit" value="Home">
            </form>
            <h1>This is Lab8</h1>
            <div class="mt-5" id="laba">
                <h2 class="text-left"><b>Постановка задачі:</b> відсортувати масив цілих чисел</h2>
                <p><b>Вихідні дані:</b><br>Кількість елементів: 30000</p>
                <%! Algorithms algorithms = new Algorithms(30000);%>
                <hr>
                <% Details bubbleSortDetails = algorithms.bubbleSort(); %>
                <p><b>Назва алгоритму: </b>Bubble Sort</p>
                <p><b>Час роботи:</b>  <%= bubbleSortDetails.getTime() %>ms</p>
                <p><b>Кількість порівнянь </b><%= bubbleSortDetails.getComparisons() %></p>
                <p><b>Кількість перестановок </b><%= bubbleSortDetails.getSubstitutions() %></p>
                <p><b>Складність(Big-O): O^2</b></p>
                <hr>
                <% Details selectionSortDetails = algorithms.SelecionSort(); %>
                <p><b>Назва алгоритму: </b>Selection Sort</p>
                <p><b>Час роботи:</b>  <%= selectionSortDetails.getTime() %>ms</p>
                <p><b>Кількість порівнянь </b><%= selectionSortDetails.getComparisons() %></p>
                <p><b>Кількість перестановок </b><%= selectionSortDetails.getSubstitutions() %></p>
                <p><b>Складність(Big-O): O^2</b></p>
                <hr>
                <% Details quickSortDetails = algorithms.QuickSort(); %>
                <p><b>Назва алгоритму: </b>Quick Sort</p>
                <p><b>Час роботи:</b>  <%= quickSortDetails.getTime() %>ms</p>
                <p><b>Кількість порівнянь </b><%= quickSortDetails.getComparisons() %></p>
                <p><b>Кількість перестановок </b><%= quickSortDetails.getSubstitutions() %></p>
                <p><b>Складність(Big-O): O^2</b></p>
            </div>
        </div>
    </body>
</html>
