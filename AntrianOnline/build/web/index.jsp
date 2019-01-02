<%-- 
    Document   : index
    Created on : Nov 30, 2018, 11:19:32 PM
    Author     : riski
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <form method="post" action="login.jsp"> 
            <center>
            <table border="0" width="30%" cellpadding="10" bgcolor="grey">
                <thead>
                    <tr>
                        <th colspan="2">Fitur Login<hr width="100%" color="black"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="username" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><hr width="100%" color="black"></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="Login" /><input type="reset" value="Reset" /></td>
                        
                    </tr>
                    <tr>
                        <td colspan="2">Belum mempunyai akun? <a href="registrasi.jsp">Daftar Disini</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>