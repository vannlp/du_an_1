<?php
class binh_luanModel extends DB
{
    function get_binhluan_by_id($id)
    {
        $sql = "SELECT * FROM binh_luan INNER JOIN nguoi_dung ON nguoi_dung.ten_dang_nhap=binh_luan.ten_dang_nhap
                WHERE id_sanpham = $id";
        return $this->getData($sql);
    }
}