<?php
class nguoi_dungModel extends DB
{
    public function get_nguoi_dung_all()
    {
        $sql = "SELECT * from nguoi_dung";
        return $this->getData($sql);
    }

    function set_nguoi_dung($signup = [])
    {
        extract($signup);
        $sql = "INSERT INTO nguoi_dung(ten_dang_nhap, mat_khau, ho_ten, email, vai_tro, trang_thai)
                VALUES('$tenDN', '$matkhau', '$hoten', '$email', 2, 1)";
        return $ktdk = $this->setData($sql);
    }
}
