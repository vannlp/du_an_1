<?php
class gio_hangModel extends DB
{
    function add_giohang($ten_dang_nhap, $id_sanpham, $so_luong, $tong_tien)
    {
        $sql = "INSERT INTO gio_hang VALUES(null,'$id_sanpham',$so_luong,$tong_tien,'$ten_dang_nhap')";
        return $this->setData($sql);
    }

    function update_giohang($id_gio_hang, $so_luong, $tong_tien)
    {
        $sql = "UPDATE gio_hang SET so_luong = $so_luong, tong_tien = $tong_tien
                WHERE id_gio_hang=$id_gio_hang";
        return $this->setData($sql);
    }

    function delete_gio_hang($id_giohang)
    {
        $sql = "DELETE FROM gio_hang WHERE id_gio_hang = $id_giohang";
        return $this->setData($sql);
    }

    function get_gio_hang_by_tenDN($ten_dang_nhap)
    {
        $sql = "SELECT gh.id_sanpham, gh.so_luong, gh.tong_tien, gh.ten_dang_nhap, sp.tieu_de, sp.img, sp.gia_giam, gh.id_gio_hang ,sp.ten_dang_nhap, sp.so_luong
                FROM gio_hang gh JOIN san_pham sp ON gh.id_sanpham = sp.id_sanpham
                WHERE gh.ten_dang_nhap = '$ten_dang_nhap'";
        return $this->getData($sql);
    }
    // test giỏ hàng vào hóa đơn
    function get_sanpham_in_giohang($ten_dang_nhap, $tenshop)
    {
        $sql = "SELECT sp.id_sanpham, sp.ten_dang_nhap, gh.tong_tien, gh.so_luong
                FROM gio_hang gh JOIN san_pham sp ON gh.id_sanpham = sp.id_sanpham
                WHERE gh.ten_dang_nhap = '$ten_dang_nhap' AND sp.ten_dang_nhap = '$tenshop'";
        return $this->getData($sql);
    }

    function get_gio_hang_by_tenDN1($ten_dang_nhap)
    {
        $sql = "SELECT gh.id_sanpham, gh.tong_tien, gh.ten_dang_nhap, gh.id_gio_hang ,sp.ten_dang_nhap
                FROM gio_hang gh JOIN san_pham sp ON gh.id_sanpham = sp.id_sanpham
                WHERE gh.ten_dang_nhap = '$ten_dang_nhap'";
        return $this->getData($sql);
    }

    function delete_giohang_by_tenDN($ten_dang_nhap)
    {
        $sql = "DELETE FROM gio_hang WHERE ten_dang_nhap = '$ten_dang_nhap'";
        return $this->setData($sql);
    }
}
