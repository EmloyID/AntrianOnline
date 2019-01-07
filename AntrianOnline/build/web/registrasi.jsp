<%-- 
    Document   : registrasi
    Created on : Nov 30, 2018, 11:25:26 PM
    Author     : riski
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <form method="post" action="prosesregis.jsp">
            <center>
            <br>
            
            
            <table border="0" width="38.1%" cellpadding="3%" background="bodas.png">
                <thead>
                    <tr>
                        <th colspan="2"><img src="logologinrgister.png" align="center">
                    </tr>
                    <tr>
                        <th colspan="2"><font size="5" color="blue">Registrasi<hr width="100%" color="black"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><font size="4"><b>NIK</font></b></td>
                        <td><input type="text" name="nik" value="" /></td>
                    </tr>
                    <tr>
                        <td><font size="4"><b>Nama</font></b></td>
                        <td><input type="text" name="nama_lgkp" value="" /></td>
                    </tr>
                    <tr>
                        <td><font size="4"><b>Username</font></b></td>
                        <td><input type="text" name="username" value="" /></td>
                    </tr>
                    <tr>
                        <td><font size="4"><b>Password</font></b></td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td><font size="4"><b>Kecamatan</font></b></td>
                        <td><input type="text" name="kecamatan" value="" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><hr width="100%" color="black"></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="Submit" /> <input type="reset" value="Reset" /></td>
                        
                    </tr>
                    <tr>
                        <td colspan="2" align="center">Sudah punya akun? <a href="menulogin.jsp" style="text-decoration: none;color:blue"><u>Login Disini</u></a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>