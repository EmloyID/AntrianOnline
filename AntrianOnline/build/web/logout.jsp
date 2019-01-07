<%-- 
    Document   : logout
    Created on : Nov 30, 2018, 11:24:58 PM
    Author     : riski
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
session.setAttribute("username", null);
session.invalidate();
response.sendRedirect("index.html");
%>