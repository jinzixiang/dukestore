<%--
  Created by IntelliJ IDEA.
  User: 154404g
  Date: 11/7/2016
  Time: 3:33 PM
  To change this template use File | Settings | File Templates.
--%>
<html>
<head><title>Duke's Bookstore</title></head>
<%@ page import="demo.*" %>
<%
    BookDetails book = (BookDetails)request.getAttribute("book");
%>
<body bgcolor="#ffffff">
<center>
   <%@include file="Header.html"%>
</center>


<h2><%= book.getTitle() %></h2>&nbsp; by<em> <%= book.getFirstName() + " " + book.getSurname() %>  (<%= book.getYear() %>)<br> <br>
    <h4>Here's what the critcs say: </h4>
    <blockquote>What a cool book.</blockquote>
    <h4>Our Price: <%= book.getPrice() %></h4>


    <p><strong><a href="/bookcatalog?bookId=<%= book.getBookId() %>">Add to Cart</a> <a href="/bookcatalog">Continue Shopping</a></strong></p>
</body>
</html>
Sign up for free to join this conversation on GitHub. Already have an account? Sign in to comment