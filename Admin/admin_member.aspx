﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_member.aspx.cs" Inherits="MovieNews.Admin.admin_member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADMIN - Quản lý thành viên</title>
    <link rel="stylesheet" href="../Support/Css/admin_post.css"/>
    <link rel="shortcut icon" href="../Support/Img/logo.png" />
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
                    <b><img src="../Support/Img/logo.png" alt="logo"" align="left" width="10%">MOVIENEWS</b>
                </div>
                <div class="trangchu">
                    <a href="/Common/home.aspx">Trang chủ</a>
                </div>
                <div class="user">
                    <b><img src="../Support/Css/admin_post.css" alt="avt"/>Tran Anh</b>
                </div>
            </div>
            <div class="main-admin">
                <div class="menu-left">
                    <div class="quanlybv">
                        <a href="/Admin/admin_post.aspx" style="font-weight: 100">Quản lý bài viết</a>
                    </div>
                    <div class="quanlytv">
                        <a href="#" style="font-weight: 700">Quản lý thành viên</a>
                    </div>
                </div>
                <div class="content-right">
                    <div class="dsbv">
                        <b>Danh sách thành viên</b>
                    </div>
                    <div class="bangdanhsach">
                        <table>
                            <thead style="background-color: #E0E0E0">
                                <tr>
                                    <th>STT</th>
                                    <th>Tên thành viên</th>
                                    <th>Ngày sinh</th>
                                    <th>Giới tính</th>
                                    <th>Ngày tham gia</th>
                                    <th>Tên đăng nhập</th>
                                    <th>Email</th>
                                    <th>Tác vụ</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>
                                        Tran Anh
                                    </td>
                                    <td>8/1/2001</td>
                                    <td>Nữ</td>
                                    <td> 
                                        18/2/2022
                                    </td>
                                    <td>Tran Anh</td>
                                    <td>
                                        mganh828@gmail.com
                                    </td>
                                    <td>
                                        <span>
                                            <button class="sua">Sửa</button>
                                        </span>
                                        <button class="xoa">
                                            Xóa
                                        </button>
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