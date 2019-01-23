<%-- 
    Document   : sukses
    Created on : Nov 30, 2018, 11:25:36 PM
    Author     : riski
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
<body background="BackgroundMAIN.png">
<br>
<br>
<br>
<br>
<center>
<font color="white">
<table border="0">
<tr><td align="center"><h1>Anda Belum login
<tr><td align="center"><h2><a href="LoginAdmin.html" style="text-decoration: none;color:blue"><u>Silahkan Login</u></a>
<%} else {
%>
<center>
<br>
<br>
<h1>Welcome <%=session.getAttribute("userid")%></h1>
<a href='homeAdmin.html' style="text-decoration: none;color:blue" target="_top"><h2>Home Admin</a>
<%
    }
%>
</table>