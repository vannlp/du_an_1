<?php
class magiamgiaModel extends DB
{
    function get_magiam(){
        $sql = "SELECT * FROM ma_giam_gia WHERE trang_thai = 0";
        return $this->getData($sql);
    }

    function add_magiam($tenDN, $ma){
        $sql = "UPDATE ma_giam_gia SET ten_dang_nhap = '$tenDN',
                                       trang_thai = 1
                WHERE id_ma_giam_gia = '$ma'";
        return $this->setData($sql);
    }

    function get_magiam_by_tenDN($ten_dang_nhap){
        $sql = "SELECT * FROM ma_giam_gia WHERE ten_dang_nhap = '$ten_dang_nhap'";
        return $this->getData($sql);
    }
}