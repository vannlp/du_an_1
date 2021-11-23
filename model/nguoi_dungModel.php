<?php
class nguoi_dungModel extends DB
{
    public function get_nguoi_dung_all()
    {
        $sql = "SELECT * from nguoi_dung";
        return $this->getData($sql);
    }
}
