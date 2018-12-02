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
Anda Belum login <br/>
<a href="index.jsp">Silahkan Login</a>
<%} else {
%>
<center><h2>Welcome <%=session.getAttribute("userid")%>
<a href='logout.jsp'>Log out</a>
<%
    }
%>
