<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="MovieNews.Common.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MovieNews - Đăng ký</title>
    <link rel="shortcut icon" href="../Support/Img/logo.png" />
    <link rel="stylesheet" href="../Support/Css/login.css" />
    
</head>
<body>
    <form method="post" id="form1" runat="server" onsubmit="return validate();">
        <div class="imgcontainer">
            <img src="../Support/Img/avataDefault.png" alt="Avatar" class="avatar" />
        </div>

        <div class="container">
            <label for="email"><b>Email</b></label>
            <input type="text" placeholder="Nhập email" name="email" id="email" class="email" />
            <p style="color: red; font-style: italic" runat="server" id="dinhdangEmail"></p>
            

            <label for="hoten"><b>Họ tên</b></label>
            <input type="text" placeholder="Nhập họ tên" name="hoten" value="" id="hoten"  />

            <label for=""><b>Giới tính</b></label>
            <br />
            <div style="padding: 5px; border: 1px solid #ccc; margin: 10px 0px 10px 0px">
                <input type="radio" id="nam" name="gioitinh" value="Nam" runat="server" />
                <label for="nam">Nam</label>

                <input type="radio" id="nu" name="gioitinh" value="Nữ" runat="server" />
                <label for="nu" style="margin-bottom: 5px">Nữ</label>
                <br />
            </div>

            <label for=""><b>Ngày sinh</b></label> <br />
            <input type="date" id="ngaysinh" name="ngaysinh" style="border-color: #ccc; margin: 10px 0px 10px 0px" /> <br />

            <label for="uname"><b>Tên đăng nhập</b></label>
            <input type="text" placeholder="Nhập tên đăng nhập" name="uname" value="" id="uname"  />
            <p style="color: red; font-style: italic" runat="server" id="validatePass6"></p>

            <label for="psw"><b>Mật khẩu</b></label>
            <input type="password" placeholder="Nhập mật khẩu" name="psw" value="" id="psw"  />
            <p style="color: red; font-style: italic" runat="server" id="validateRepass"></p>

            <label for="cfpsw"><b>Xác nhận mật khẩu</b></label>
            <input type="password" placeholder="Xác nhận mật khẩu" name="cfpsw" value="" id="cfpsw"  />

            <p style="color: red; font-style: italic" runat="server" id="checkTrong"></p>
            <p style="color: red; font-style: italic" runat="server" id="errorEmail"></p>
            <asp:Button value="Đăng ký" id="dangky" onclick="dangky_Click" text="Đăng ký" runat="server" />
        </div>

        <div class="container" style="background-color: #f1f1f1">
            <button type="button" class="cancelbtn"><a href="/Common/home.aspx" class="backHome">Quay lại trang chủ</a></button>
            <button type="button" class="cancelbtn" style="background-color:#04AA6D"><a href="/Common/login.aspx" class="backHome">Quay lại đăng nhập</a></button>
        </div>
    </form>
</body>
    <script>
        function validate() {
            var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

            email = document.getElementById("email").value;
            hoten = document.getElementById("hoten").value;
            gioitinh = document.getElementById("gioitinh").value;
            ngaysinh = document.getElementById("ngaysinh").value;
            tdn = document.getElementById("umane").value;
            pass = document.getElementById("psw").value;
            repass = document.getElementById("cfpsw").value;

            check = true;
            //check trong
            if (email == "" || hoten == "" || gioitinh == "" || ngaysinh == "" || tdn == "" || pass == "" || repass == "") {
                document.getElementById("checkTrong").innerHTML = "Vui lòng nhập đủ thông tin!";
                check = false;
            }


            //validate email
            if (email.match(mailformat)) {
                check = true;
            }
            else {
                document.getElementById("dinhdangEmail").innerHTML = "Định dạng email chưa đúng!";
                check = false;
            }


            //validate pass
            if (pass < 6) {
                document.getElementById("validatePass6").innerHTML = "Mật khẩu phải dài hơn 6 ký tự!";
                check = false;
            }
            if (repass != pass) {
                document.getElementById("validateRepass").innerHTML = "Nhập khớp với mật khẩu bên trên!";
                check = false;
            }
            return check;
        }
    </script>
</html>
