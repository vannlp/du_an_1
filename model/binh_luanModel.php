<?php
class binh_luanModel extends DB
{
    function get_binhluan_by_idSP($id)
    {
        $sql = "SELECT * FROM binh_luan bl INNER JOIN nguoi_dung nd ON bl.ten_dang_nhap=nd.ten_dang_nhap
                WHERE id_sanpham = '$id'";
        return $this->getData($sql);
    }
}
