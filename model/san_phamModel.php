<?php
class san_phamModel extends DB
{
    function get_sanPham()
    {
        $sql = "SELECT * FROM san_pham order by ngay_dang desc";
        return $this->getData($sql);
    }
    function get_id_sanPham($id)
    {
        $sql = "SELECT * FROM san_pham WHERE id_sanpham = '$id'";
        return $this->getDataOne($sql);
    }
    function get_id_dm_by_id_sanPham($iddm)
    {
        $sql = "SELECT * FROM san_pham WHERE id_dm_sp = $iddm";
        return $this->getData($sql);
    }

    function insert_san_pham($data = [])
    {
        extract($data);
        if (!isset($gia_giam)) {
            $gia_giam = null;
        }
        // $trang_thai = false;
        $sql = "INSERT into san_pham values('$id_sanpham', $id_dm_sp, '$ten_dang_nhap', 
        '$tieu_de','$noi_dung','$img', $gia_goc, $gia_giam, '$ngay_dang', 0, 0, $so_luong)";
        return $this->setData($sql);
    }

    function get_san_pham_username($ten_dang_nhap)
    {
        $sql = "SELECT * from san_pham where ten_dang_nhap = '$ten_dang_nhap'";
        return $this->getData($sql);
    }

    function update_san_pham($data = [])
    {
        extract($data);
        $sql = "UPDATE san_pham 
        set id_dm_sp=$id_dm_sp, tieu_de='$tieu_de', noi_dung='$noi_dung', img='$img',
        gia_goc=$gia_goc, gia_giam=$gia_giam, so_luong=$so_luong
        where id_sanpham = '$id_sanpham'";
        return $this->setData($sql);
    }

    function get_san_pham_img($id_sanpham)
    {
        $sql = "SELECT img from san_pham where id_sanpham = '$id_sanpham'";
        return $this->getValue($sql);
    }
}
