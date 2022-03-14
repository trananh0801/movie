<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotPassword.aspx.cs" Inherits="MovieNews.Common.forgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MovieNews - Quên mật khẩu</title>
    <link rel="shortcut icon" href="../Support/Img/logo.png" />
    <link rel="stylesheet" href="../Support/Css/login.css"/>
    <script src="../Support/Js/login.js"></script>
</head>
<body>
    <form id="form1" runat="server" method="post" onsubmit="return validate();" >
        <div class="imgcontainer">
            <img src="../Support/Img/avataDefault.png" alt="Avatar" class="avatar"/>
        </div>

        <div class="container">
            <label for="mail"><b>Email</b></label>
            <input type="text" placeholder="Nhập email" name="mail" id="mail" runat="server" />
            <p style="color: red; font-style: italic" runat="server" id="erroremail"></p>

            <label for="newpass"><b>Mật khẩu mới</b></label>
            <input type="password" placeholder="Nhập mật khẩu mới" name="newpass" id="newpass" runat="server" />
            <p style="color: red; font-style: italic" runat="server" id="errorpass"></p>

            <label for="renewpass"><b>Nhập lại mật khẩu</b></label>
            <input type="password" placeholder="Nhập lại mật khẩu" name="renewpass" id="renewpass" runat="server" />
            <p style="color: red; font-style: italic" runat="server" id="errorrepass"></p>
            
            <asp:Button id="dangnhap" runat="server" onclick="forgot_Click" Text="Đổi mật khẩu" />
            
        </div>

        <div class="container" style="background-color: #f1f1f1">
            <button type="button" class="cancelbtn"> <a href="/Common/home.aspx" class="backHome"> Quay lại trang chủ </a></button>
            <button type="button" class="cancelbtn"> <a href="login.aspx" class="backHome"> Quay lại đăng nhập </a></button>
        </div>
    </form>
</body>
    <script>
        function validate() {
            email = document.getElementById("mail").value;
            pass = document.getElementById("newpass").value;
            repass = document.getElementById("renewpass").value;

            loiemail = document.getElementById("erroremail");
            loipass = document.getElementById("errorpass");
            loirepass = document.getElementById("errorrepass");

            check = true;

            
            return check;
        }
    </script>
</html>
