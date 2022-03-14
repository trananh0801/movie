<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_post.aspx.cs" Inherits="MovieNews.Admin.admin_post" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADMIN - Quản lý bài viết</title>
    <link rel="shortcut icon" href="../Support/Img/logo.png" />
    <link rel="stylesheet" href="../Support/Css/admin_post.css" />
    <link rel="stylesheet" href="../Support/fontawesome/css/all.min.css"/>
    <style>
        * {
            font-family: sans-serif;
            margin: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="menu-admin">
                <div class="logo-admin">
                    <span>
                        <i class="fas fa-user-shield"></i>&nbsp;
                    </span>
                    <b>MOVIENEWS</b>
                </div>
                <div class="trangchu">
                    <span>
                        <i class="fas fa-home"></i>
                    </span>
                    <a href="/Common/home.aspx" class="admin-home">&nbsp;Trang chủ</a>
                </div>
                <div class="user">
                    <i class="fas fa-user"></i>&nbsp;<b id="admin" runat="server"></b>
                </div>
            </div>
            <div class="main-admin">
                <div class="menu-left">
                    <div class="quanlybv">
                        <a href="/Admin/post.aspx" style="font-weight: 100">Đăng bài viết</a>
                    </div>
                    <div class="quanlybv">
                        <a href="#">Quản lý bài viết</a>
                    </div>
                    <div class="quanlytv">
                        <a href="/Admin/admin_member.aspx">Quản lý thành viên</a>
                    </div>
                </div>
                <div class="content-right">
                    <div class="dsbv">
                        <b>Danh sách bài viết</b>
                    </div>
                    <div class="bangdanhsach">
                        <table>
                            <thead style="background-color: #E0E0E0">
                                <tr>
                                    <th>STT</th>
                                    <th>Tiêu đề</th>
                                    <th>Ngày đăng</th>
                                    <th>Thuộc mục</th>
                                    <th>Ảnh bìa</th>
                                    <th>Trạng thái</th>
                                    <th>Chi tiết nội dung</th>
                                    <th>Tác vụ</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>SnowDrop
                                    </td>
                                    <td>8/1/2001</td>
                                    <td>Tin mới</td>
                                    <td>
                                        <img class="img-movie" src="../Support/Img/snowdrop.jpg" style="max-width: 100px" />
                                    </td>
                                    <td>Công khai</td>
                                    <td>
                                        <a href="#">xem chi tiết</a>
                                    </td>
                                    <td>
                                        <span>
                                            <button class="sua">Sửa</button>
                                        </span>
                                        <button class="xoa" style="margin-left: 2px;">Xóa</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
