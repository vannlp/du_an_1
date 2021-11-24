<?php
class san_phamModel extends DB
{
    function get_sanPham()
    {
        $sql = "SELECT * FROM san_pham";
        return $this->getData($sql);
    }
    function get_id_sanPham($id)
    {
        $sql = "SELECT * FROM san_pham WHERE id_sanpham = $id";
        return $this->getDataOne($sql);
    }

    function insert_san_pham($data = [])
    {
        extract($data);
        if (!isset($gia_giam)) {
            $gia_giam = null;
        }
        $sql = "INSERT into san_pham 
        values('$id_sanpham', $id_dm_sp, '$ten_dang_nhap', '$tieu_de',
        '$noi_dung','$img',$gia_goc,$gia_giam,$ngay_dang,0,0,$so_luong)";

        return $this->setData($sql);
    }
}
