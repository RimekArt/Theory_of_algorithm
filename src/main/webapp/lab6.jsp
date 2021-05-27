<%-- 
    Document   : lab6
    Created on : 27 мая 2021 г., 17:53:25
    Author     : 1
--%>

<%@page import="knu.fit.ist.ta.lab6.BinaryTree"%>
<%@page import="knu.fit.ist.ta.lab6.Progression"%>
<%@page import="knu.fit.ist.ta.lab6.BinaryTreePrinter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" 
              integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" 
              crossorigin="anonymous" defer>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
              rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
              crossorigin="anonymous">
    </head>
    
    <body>
        <div class="container">
            <form action="index.jsp">  
                <input type="submit" value="Home">
            </form>
            <h1>This is Lab6</h1>
            
                <p>Elements:{7,14,9,5,13,8,1,12}</p>
                <%! BinaryTree tree = new BinaryTree();%>
                <%
                    tree.add(7);
                    tree.add(14);
                    tree.add(9);
                    tree.add(5);
                    tree.add(13);
                    tree.add(8);
                    tree.add(1);
                    tree.add(12);
                %>
                <pre>
                <p>Result:<br> <%= BinaryTreePrinter.printNode(tree.getRoot())%></p>
                </pre>
                <%tree.mirrorTree(tree.getRoot()); %>
                <pre>
                <p>Result:<br> <%= BinaryTreePrinter.printNode(tree.getRoot())%></p>
                </pre>
            </div>
        </div>
    </body>
