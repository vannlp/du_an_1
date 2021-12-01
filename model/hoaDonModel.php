<?php
class hoaDonModel extends DB
{
    function insert_hoa_don($data = [])
    {
        extract($data);
        $sql = "INSERT into hoa_don values('$id_hoa_don', '$ten_dang_nhap', '$tong_tien', '$ngay_mua', null, 0)";
        return $this->setData($sql);
    }
    function insert_hdct($data = [])
    {
        extract($data);
        $sql = "INSERT into hoa_don_chi_tiet values(null, '$id_sanpham', '$id_hoa_don',
        $so_luong, null, $tong_tien)";
        return $this->setData($sql);
    }
}
