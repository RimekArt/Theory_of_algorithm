<%-- 
    Document   : lab6
    Created on : 27 мая 2021 г., 17:53:25
    Author     : 1
--%>

<%@page import="knu.fit.ist.ta.lab6.BinaryTree"%>

<%@page import="knu.fit.ist.ta.lab6.BinaryTreePrinter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
    <body>
        <div class="container">
            <form action="index.jsp">  
                <input type="submit" value="Home">
            </form>
            <h1>This is Lab6</h1>
            <div class="mt-5" id="laba">
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
