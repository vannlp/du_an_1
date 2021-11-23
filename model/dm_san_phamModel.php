<?php
class dm_san_phamModel extends DB
{
    function get_dm_sp_all()
    {
        $sql = "SELECT * from danhmuc_sp order by id_dm_sp desc";
        return $this->getData($sql);
    }

    function insert_dm_sp($data = [])
    {
        extract($data);
        $sql = "INSERT into danhmuc_sp values(null, '$tieu_de', '$noi_dung', '$img')";
        return $this->setData($sql);
    }

    function delete_dm_sp($id_dm_sp)
    {
        $sql = "DELETE from danhmuc_sp where id_dm_sp = $id_dm_sp";
        $this->setData($sql);
    }

    function get_img($id_dm_sp)
    {
        $sql = "SELECT img from danhmuc_sp where id_dm_sp=$id_dm_sp";
        return $this->getValue($sql);
    }

    function get_dm_sp_one($id_dm_sp)
    {
        $sql = "SELECT * from danhmuc_sp where id_dm_sp=$id_dm_sp";
        return $this->getDataOne($sql);
    }

    function update_dm_sp($data = [])
    {
        extract($data);
        $sql = "UPDATE danhmuc_sp set tieu_de='$tieu_de', noi_dung='$noi_dung',img='$img'
        where id_dm_sp=$id_dm_sp";
        return $this->setData($sql);
    }
}
