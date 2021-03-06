<?php
class nguoi_dungModel extends DB
{
    public function get_nguoi_dung_all()
    {
        $sql = "SELECT * from nguoi_dung";
        return $this->getData($sql);
    }

    public function get_nguoi_dung_username($ten_dang_nhap)
    {
        $sql = "SELECT * from nguoi_dung where ten_dang_nhap = '$ten_dang_nhap'";
        return $this->getDataOne($sql);
    }

    function set_nguoi_dung($signup = [])
    {
        extract($signup);
        $sql = "INSERT INTO nguoi_dung(ten_dang_nhap, mat_khau, ho_ten, email, img, vai_tro, trang_thai)
                VALUES('$tenDN', '$matkhau', '$hoten', '$email', '$hinh', 2, 1)";
        return $ktdk = $this->setData($sql);
    }

    function update_nguoi_dung($data = [])
    {
        extract($data);
        $sql = "UPDATE nguoi_dung set ho_ten='$ho_ten', dia_chi='$dia_chi', sdt='$sdt', cmnd='$cmnd',
        img = '$img', email='$email', ngay_sinh='$ngay_sinh', gioi_tinh='$gioi_tinh'
        where ten_dang_nhap='$ten_dang_nhap'";
        return $this->setData($sql);
    }

    function get_img_theo_username($ten_dang_nhap)
    {
        $sql = "SELECT img from nguoi_dung where ten_dang_nhap='$ten_dang_nhap'";
        return $this->getValue($sql);
    }

    function update_mat_khau($matkhau, $ten_dang_nhap)
    {
        $sql = "UPDATE nguoi_dung set mat_khau='$matkhau' where ten_dang_nhap = '$ten_dang_nhap'";
        return $this->setData($sql);
    }

    function quen_mat_khau($ten_dang_nhap, $mat_khau, $mail)
    {
        $sql = "UPDATE nguoi_dung set mat_khau='$mat_khau' where ten_dang_nhap = '$ten_dang_nhap' AND email = '$mail'";
        return $this->setData($sql);
    }
    //Admin 
    function update_khach_hang($khachhang, $ten_dang_nhap, $tamp)
    {
        $sql = "UPDATE nguoi_dung set $tamp = $khachhang WHERE ten_dang_nhap = '$ten_dang_nhap'";
        return $this->setData($sql);
    }

    function get_nguoi_dung_admin()
    {
        $sql = "SELECT * from nguoi_dung where vai_tro != 0";
        return $this->getData($sql);
    }
}
