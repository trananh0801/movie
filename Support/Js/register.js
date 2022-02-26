function validate() {
    email = document.getElementById("email").value;
    hoten = document.getElementById("hoten").value;
    gioitinh = document.getElementById("gioitinh").value;
    ngaysinh = document.getElementById("ngaysinh").value;
    tdn = document.getElementById("umane").value;
    pass = document.getElementById("psw").value;
    repass = document.getElementById("cfpsw").value;

    check = true;
    //trong
    if (email == "" || hoten == "" || gioitinh == "" || ngaysinh == "" || tdn == "" || pass == "" || repass == "") {
        document.getElementById("checkTrong").innerHTML = "Vui lòng nhập đủ thông tin!";
        check = false;
    }
    return check;
}