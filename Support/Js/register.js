function validate() {
    email = document.getElementById("email").value;
    hoten = document.getElementById("hoten").value;
    gioitinh = document.querySelector('input[name = gioitinh]:checked').value;
    ngaysinh = document.getElementById("ngaysinh").value;
    tdn = document.getElementById("uname").value;
    pass = document.getElementById("psw").value;
    repass = document.getElementById("cfpsw").value;

    loiemail = document.getElementById("dinhdangEmail");
    loiten = document.getElementById("dinhdangten");
    loigt = document.getElementById("checkgt");
    loins = document.getElementById("checkns");
    loitdn = document.getElementById("checkusername");
    loipass = document.getElementById("validatepass");
    loicfpass = document.getElementById("checkCfPass");

    
    check = true;

    //check email
    if (email != "") {
        if (email.indexOf("@gmail.com") < 0) {
            loiemail.innerHTML = "Email chưa đúng định dạng!";
            check = false;
        }
    } else {
        loiemail.innerHTML = "Email không được trống!";
        check = false;
    }

    //check ten
    const formatTen = /[0-9]/;
    if (hoten != "") {
        if (formatTen.test(hoten) == true) {
            loiten.innerHTML = "Tên không được chứa số!";
            check = false;
        }
    } else {
        loiten.innerHTML = "Tên không được trống!";
        check = false;
    }


    //check ngay sinh
    var date = new Date(ngaysinh).getFullYear();
    var dateCur = new Date().getFullYear();
    var tuoi = dateCur - date;
    if (ngaysinh != "") {
        if (tuoi < 18) {
            loins.innerHTML = "không thể đăng ký nếu bạn dưới 18 tuổi!";
            check = false;
        }
    }
    else {
        loins.innerHTML = "Ngày sinh không được trống!";
        check = false;
    }
    
    //check ten dang nhap
    var formatUname = /[ `!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/;
    if (tdn != "") {
        if (formatUname.test(tdn) == true) {
            loitdn.innerHTML = "Tên đăng nhập không chứa các ký tự đặc biệt!";
            check = false;
        }
    }
    else {
        loitdn.innerHTML = "Tên đăng nhập không được trống!";
        check = false;
    }

    //check pass
    if (pass != "") {
        if (pass.length < 6) {
            loipass.innerHTML = "Mật khẩu phải lớn hơn 6 ký tự!";
            check = false;
        }
    }
    else {
        loipass.innerHTML = "Mật khẩu không được trống!";
        check = false;
    }


    // check repass
    if (repass != "") {
        if (repass != pass) {
            loicfpass.innerHTML = "Nhập lại mật khẩu chưa đúng!";
            check = false;
        }
    }
    else {
        loicfpass.innerHTML = "Nhập lại mật khẩu!";
        check = false;
    }
    return check;


    //validate email
    //var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    //if (email.match(mailformat)) {
    //    check = true;
    //}
    //else {
    //    document.getElementById("dinhdangEmail").innerHTML = "Định dạng email chưa đúng!";
    //    document.getElementById("email").focus();
    //    check = false;
    //}
    
}