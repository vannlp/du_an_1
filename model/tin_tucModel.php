<?php
class tin_tucModel extends DB
{
    function get_danh_muc_tin()
    {
        $sql = "SELECT * from danh_muc_tin order by id_dm_tin desc";
        return $this->getData($sql);
    }

    function insert_dm_tin($tieu_de, $noi_dung)
    {
        $sql = "INSERT INTO danh_muc_tin values (null, '$tieu_de', '$noi_dung')";
        return $this->setData($sql);
    }

    function get_dm_one($id_dm_tin)
    {
        $sql = "SELECT * from danh_muc_tin where id_dm_tin = $id_dm_tin";
        return $this->getDataOne($sql);
    }

    function update_dm($id_dm_tin, $tieu_de, $mo_ta)
    {
        $sql = "UPDATE danh_muc_tin set tieu_de='$tieu_de', mo_ta='$mo_ta' where id_dm_tin='$id_dm_tin'";
        return $this->setData($sql);
    }

    function add_tin_tuc($data = [])
    {
        extract($data);
        $sql = "INSERT into tin_tuc values(null, $id_dm_tin, '$tieu_de', 
        '$noi_dung', '$img', 0, '$ngay_dang', 1, '$ten_dang_nhap')";
        return $this->setData($sql);
    }

    function get_tin_tuc()
    {
        $sql = "SELECT tt.tieu_de, tt.ngay_dang, dmt.tieu_de, tt.id_tin_tuc from tin_tuc tt join danh_muc_tin dmt
        on tt.id_dm_tin = dmt.id_dm_tin
        order by tt.id_tin_tuc desc";
        return $this->getData($sql);
    }

    function delete_tin($id_tin_tuc)
    {
        $sql = "DELETE from tin_tuc where id_tin_tuc = $id_tin_tuc";
        return $this->setData($sql);
    }

    function get_tin_tuc_one($id_tin_tuc)
    {
        $sql = "SELECT * from tin_tuc where id_tin_tuc = $id_tin_tuc";
        return $this->getDataOne($sql);
    }

    public function update_tin_tuc($var = [])
    {
        extract($var);
        $sql = "UPDATE tin_tuc set id_dm_tin=$id_dm_tin, tieu_de='$tieu_de', noi_dung='$noi_dung',
        img='$img' where id_tin_tuc='$id_tin_tuc'";
        return $this->setData($sql);
    }

    function get_img_tin_tuc($id_tin_tuc)
    {
        $sql = "SELECT img from tin_tuc where id_tin_tuc='$id_tin_tuc'";
        return $this->getValue($sql);
    }

    function get_tin_tuc_for_slider()
    {
        $sql = "SELECT * from tin_tuc order by ngay_dang desc";
        return $this->getData($sql);
    }
}
