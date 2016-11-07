<%--
  Created by IntelliJ IDEA.
  User: 154404g
  Date: 11/7/2016
  Time: 3:33 PM
  To change this template use File | Settings | File Templates.
--%>
<html>
<head><title>Duke's Bookstore</title></head>
<%@ page import="demo.*, java.util.*" %>
<%
    List<BookDetails> books = (List<BookDetails>)request.getAttribute("books");
%>
<body bgcolor="#ffffff">
<center>
    <%@include file="Header.html"%>
</center>
<br>
<h3>Please Choose from our selection</h3>
<br>
<center>
    <table summary="layout">
        <%
            for (BookDetails book: books) {
        %>
        <tr>
            <td bgcolor="#ffffaa"><a href="/bookdetails?bookId=<%= book.getBookId() %>"> <strong><%= book.getTitle()%></strong></a></td>
            <td bgcolor="#ffffaa" rowspan=2><%= book.getPrice() %></td>
            <td bgcolor="#ffffaa" rowspan=2><a href="/bookcatalog?bookId=<%= book.getBookId() %>"> Add to Cart </a></td>
        </tr>
        <tr>
            <td>by<em> <%= book.getFirstName() %></em></td>
        </tr>
        <%
            }
        %>
    </table>
</center>
</body>
</html>