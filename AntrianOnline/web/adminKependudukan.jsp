<%-- 
    Document   : adminKependudukan
    Created on : Jan 27, 2019, 12:37:17 AM
    Author     : riski
--%>

<%@page import="Database.DB_Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<%
    DB_Connection db = new DB_Connection();
    Connection con = db.getConn();
    Statement st = con.createStatement();
    ResultSet antrian;
    antrian=st.executeQuery ("SELECT user.kecamatan,antriankependudukan.noantrian FROM user,antriankependudukan WHERE user.username=antriankependudukan.username ORDER BY antriankependudukan.noantrian ASC");
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Admin</title>
    </head>
    <body>
        <center>
            <font size="5">
            <br>
            <table border='0'>
                <tr><td colspan='2' align='center'><img src='antrianSaatIni.png' height="50%" width='80%'>
                <tr><td align='center'><br><img src='bannerKependudukan.png' height="70%" width="50%">
                <tr><td align='center'>
                        <table border='0' bgcolor="white" height="80%" width="40%">
                            <%if (antrian.next()) {%>
                            <tr bgcolor="#0074c2" align="center"><br><td>NO ANTRIAN<td>KECAMATAN
                            <tr align="center"><td><%=antrian.getString("antriankependudukan.noantrian")%><td><%=antrian.getString("user.kecamatan")%>
                            <%}else{%>
                            <h1>Daftar Antrian Kosong</h1>
                            <%}%>
                        </table>
                <tr><td align='center'><br><a href="nextAntrianKependudukan.jsp" target="_top"><img src="next.png" height="35%" width="10%"></a>
                <tr><td align='right' colspan="2"><a href="resetAntrian.jsp" target="_top"><img src="reset.png" height="35%" width="10%"></a>
            </table>
            </font>
    </center>
    </body>
</html>
