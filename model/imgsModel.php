<?php
class imgsModel extends DB
{
    function get_img_username($ten_dang_nhap)
    {
        $sql = "SELECT * from imgs where ten_dang_nhap='$ten_dang_nhap'";
        return $this->getData($sql);
    }

    function insert_img_username($data = [])
    {
        extract($data);
        $sql = "INSERT into imgs values(null, '$link_img', null, null, '$ten_dang_nhap')";
        return $this->setData($sql);
    }

    function update_img_sanpham($id_sanpham, $data = [])
    {
        for ($i = 0; $i < count($data); $i++) {
            $id = $data[$i];
            $sql = "UPDATE imgs set id_sanpham = '$id_sanpham' where id_img=$id";
            $this->setData($sql);
        }
    }
}
