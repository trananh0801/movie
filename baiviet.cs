using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MovieNews
{
    public class baiviet
    {
        string postId;
        string tieude;
        string ngaydang;
        string thuocmuc;
        string ngaythamgia;
        string tendangnhap;
        string matkhau;
        string email;
        string hoten;
        string ngaysinh;
        string gioitinh;

        public string HoTen
        {
            get { return hoten; }
            set { hoten = value; }
        }
        public string NgaySinh
        {
            get { return ngaysinh; }
            set { ngaysinh = value; }
        }
        public string GioiTinh
        {
            get { return gioitinh; }
            set { gioitinh = value; }
        }
        public string NgayThamGia
        {
            get { return ngaythamgia; }
            set { ngaythamgia = value; }
        }
        public string TenDangNhap
        {
            get { return tendangnhap; }
            set { tendangnhap = value; }
        }
        public string MatKhau
        {
            get { return matkhau; }
            set { matkhau = value; }
        }
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
    }
}