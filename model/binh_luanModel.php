<?php
class binh_luanModel extends DB
{
    function get_binhluan_by_idSP($id)
    {
        $sql = "SELECT * FROM binh_luan bl INNER JOIN nguoi_dung nd ON bl.ten_dang_nhap=nd.ten_dang_nhap
                WHERE id_sanpham = '$id'";
        return $this->getData($sql);
    }

    function add_binhluan($data = [])
    {
        extract($data);
        $sql = "INSERT INTO binh_luan VALUES(null,'$tenDN',null,'$id','$text','$ngay_dang',$soSao)";
        return $this->setData($sql);
    }

    function get_Sao_binhluan_by_idSP($data = []){
        extract($data);
        $sql = "SELECT AVG (so_sao) FROM binh_luan WHERE id_sanpham = '$id'";
        return $this->getDataOne($sql);
    }

    function UpSao($upsao, $data=[]){
        extract($data);
        $sql = "UPDATE san_pham SET danh_gia = '$upsao' WHERE id_sanpham = '$id'";
        return $this->setData($sql);
    }
}
