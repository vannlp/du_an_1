<?php
class binh_luanModel extends DB
{
    function get_binhluan_by_idSP($id)
    {
        $sql = "SELECT * FROM binh_luan WHERE id_sanpham = '$id'";
        return $this->getData($sql);
    }
}
