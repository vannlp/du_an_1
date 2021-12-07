<?php
class magiamgiaModel extends DB
{
    function get_magiam($date)
    {
        $sql = "SELECT * FROM ma_giam_gia WHERE trang_thai = 0 and ngay_ket_thuc >= '$date'";
        return $this->getData($sql);
    }

    function add_magiam($tenDN, $ma)
    {
        $sql = "UPDATE ma_giam_gia SET ten_dang_nhap = '$tenDN',
                                       trang_thai = 1
                WHERE id_ma_giam_gia = '$ma'";
        return $this->setData($sql);
    }

    function get_magiam_by_tenDN($ten_dang_nhap)
    {
        $sql = "SELECT * FROM ma_giam_gia WHERE ten_dang_nhap = '$ten_dang_nhap' and trang_thai = 1";
        return $this->getData($sql);
    }

    function get_phan_tram_giam($id_ma_giam_gia)
    {
        $sql = "SELECT phan_tram_giam FROM ma_giam_gia WHERE id_ma_giam_gia='$id_ma_giam_gia'";
        return $this->getValue($sql);
    }

    function update_ma_gia($ma)
    {
        $sql = "UPDATE ma_giam_gia SET trang_thai = 2 WHERE id_ma_giam_gia = '$ma'";
        return $this->setData($sql);
    }

    function addsale($data=[]){
        extract ($data);
        $sql = "INSERT INTO ma_giam_gia
        VALUES ('$id_ma_giam_gia', null ,$phan_tram_giam_gia,0,'$ngay_bat_dau','$ngay_ket_thuc')";
        return $this->setData($sql);

    }

    


        
}
