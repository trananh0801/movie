<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="MovieNews.Common.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MovieNews - Đăng ký</title>
    <link rel="shortcut icon" href="../Support/Img/logo.png" />
    <link rel="stylesheet" href="../Support/Css/login.css" />
    <script src="../Support/Js/register.js" ></script>
</head>
<body>
    <form method="post" id="form1" runat="server" onsubmit="return validate();">
        <div class="imgcontainer">
            <img src="../Support/Img/avataDefault.png" alt="Avatar" class="avatar" />
        </div>

        <div class="container">
            <label for="email"><b>Email</b></label>
            <input type="text" placeholder="Nhập email" name="email" id="email" class="email" />
            <p style="color: red; font-style: italic" id="dinhdangEmail" runat="server"></p>
            

            <label for="hoten"><b>Họ tên</b></label>
            <input type="text" placeholder="Nhập họ tên" name="hoten" value="" id="hoten"  />
            <p style="color: red; font-style: italic" runat="server" id="dinhdangten"></p>

            <label for=""><b>Giới tính</b></label>
            <br />
            <div style="padding: 5px; border: 1px solid #ccc; margin: 10px 0px 10px 0px">
                <input type="radio" id="nam" name="gioitinh" value="Nam" runat="server" />
                <label for="nam">Nam</label>

                <input type="radio" id="nu" name="gioitinh" value="Nữ" runat="server" />
                <label for="nu" style="margin-bottom: 5px">Nữ</label>
                <br />
            </div>
            <p style="color: red; font-style: italic" runat="server" id="checkgt"></p>

            <label for="ngaysinh"><b>Ngày sinh</b></label> <br />
            <input type="date" id="ngaysinh" name="ngaysinh" value="" style="border-color: #ccc; margin: 10px 0px 10px 0px" /> <br />
            <p style="color: red; font-style: italic" runat="server" id="checkns"></p>

            <label for="uname"><b>Tên đăng nhập</b></label>
            <input type="text" placeholder="Nhập tên đăng nhập" name="uname" value="" id="uname"  />
            <p style="color: red; font-style: italic" runat="server" id="checkusername"></p>

            <label for="psw"><b>Mật khẩu</b></label>
            <input type="password" placeholder="Nhập mật khẩu" name="psw" value="" id="psw"  />
            <p style="color: red; font-style: italic" runat="server" id="validatepass"></p>

            <label for="cfpsw"><b>Xác nhận mật khẩu</b></label>
            <input type="password" placeholder="Xác nhận mật khẩu" name="cfpsw" value="" id="cfpsw"  />
            <p style="color: red; font-style: italic" runat="server" id="checkCfPass"></p>

            <asp:Button id="dangnhap" runat="server" Onclick="dangky_Click" Text="Đăng ký" />
        </div>

        <div class="container" style="background-color: #f1f1f1">
            <button type="button" class="cancelbtn"><a href="/Common/home.aspx" class="backHome" >Quay lại trang chủ</a></button>
            <button type="button" class="cancelbtn" style="background-color:#04AA6D"><a href="/Common/login.aspx" class="backHome">Quay lại đăng nhập</a></button>
        </div>
    </form>
</body>
</html>
