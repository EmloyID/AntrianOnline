<%-- 
    Document   : menuAmbilAntrian
    Created on : Jan 20, 2019, 2:45:55 PM
    Author     : riski
--%>

<%@page import="Database.DB_Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<%
String user = String.valueOf(session.getAttribute("userid"));
String noantrian = request.getParameter("nomorantrian");
    DB_Connection db = new DB_Connection();
    Connection con = db.getConn();
    Statement st = con.createStatement();
    ResultSet cek_username;
    cek_username=st.executeQuery ("SELECT * FROM antriancatatansipil WHERE username='"+user+"'");
    if (cek_username.next()){
%>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ambil Antrian</title>
    </head>
    <center>
    <body>
        <font color="white">
        <h1>PILIH JENIS ANTRIAN ANDA</h1>
        <hr align="center" height="2%" width="45%" color="white">
        </font>
        <br>
        <table border="0">
            <tr><td align="center"><img src="bannerKependudukan.png" height="70%" width="80%"><td align="center"><img src="bannerCatatanSipil.png" height="70%" width="80%">
            <tr><td align="center"><br><br><img src="Checkbox.png"></a><td align="center"><br><br><img src="Checkbox1.png"></a>
            <tr><td colspan="2" align="center"><br><img src="antrianAnda.png" height="50%" width="50%">
            <tr><td colspan="2" align="center"><br><font size='5' color='white'><%=cek_username.getString("noantrian")%>
                    <%}%>
        </table>
    </center>
    </body>
</html>
