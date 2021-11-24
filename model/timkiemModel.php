<?php
class timkiemModel extends DB{
    function tim_kiem($timkiem){
        $sql = "SELECT * FROM `san_pham` sp JOIN `danhmuc_sp` dmsp ON sp.id_dm_sp=dmsp.Id_dm_sp
                WHERE sp.tieu_de LIKE '%$timkiem%' OR dmsp.tieu_de LIKE '%$timkiem%'";
        return $this->getData($sql);
    }
    function tim_kiem_all(){
        $sql = "SELECT * FROM san_pham";
        return $this->getData($sql);
    }
    function tim_kiem_dm($timkiem){
        $sql = "SELECT * FROM `san_pham` sp JOIN `danhmuc_sp` dmsp ON sp.id_dm_sp=dmsp.Id_dm_sp
                WHERE sp.tieu_de LIKE '%$timkiem%' OR dmsp.tieu_de LIKE '%$timkiem%'";
        return $this->getData($sql);
    }
}
?>