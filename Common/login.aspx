<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="MovieNews.Common.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MovieNews - Đăng nhập</title>
    <link rel="shortcut icon" href="../Support/Img/logo.png" />
    <link rel="stylesheet" href="../Support/Css/login.css"/>
    <script src="../Support/Js/login.js"></script>
</head>
<body>
    <form id="form1" runat="server" method="post">
        <div class="imgcontainer">
            <img src="../Support/Img/avataDefault.png" alt="Avatar" class="avatar"/>
        </div>

        <div class="container">
            <label for="uname"><b>Tên đăng nhập</b></label>
            <input type="text" placeholder="Nhập tên đăng nhập" name="uname" id="uname" runat="server" />

            <label for="psw"><b>Mật khẩu</b></label>
            <input type="password" placeholder="Nhập mật khẩu" name="psw" id="psw" runat="server" />

            <p style="color: red; font-style: italic" runat="server" id="errorTK"></p>
            <asp:Button id="dangnhap" runat="server" onclick="dangnhap_Click" Text="Đăng nhập" />
            <label>
                <input type="checkbox" checked="checked" name="remember" runat="server"/>
                Nhập mật khẩu
            </label>
        </div>

        <div class="container" style="background-color: #f1f1f1">
            <button type="button" class="cancelbtn"> <a href="/Common/home.aspx" class="backHome"> Quay lại trang chủ </a></button>
            <button type="button" class="cancelbtn"> <a href="/Common/register.aspx" class="backHome"> Bạn chưa có tài khoản? </a></button>
            <span class="psw">Quên <a href="forgotPassword.aspx">mật khẩu?</a></span>
        </div>
    </form>
</body>
    <script>
        function validate() {
            tdn = document.getElementById("uname").value;
            pass = document.getElementById("pass").value;
            check = true;

            if (tdn == "" || pass == "") {
                document.getElementById("errorTK").innerHTML = "Vui lòng nhập đủ thông tin!";
                check = false;
            }
            return check;
        }
    </script>
</html>
