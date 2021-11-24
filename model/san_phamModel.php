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
}
