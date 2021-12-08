<?php
class timkiemModel extends DB{
    function tim_kiem($timkiem){
        $sql = "SELECT * FROM `san_pham` sp JOIN `danhmuc_sp` dmsp ON sp.id_dm_sp=dmsp.Id_dm_sp
                WHERE sp.tieu_de LIKE '%$timkiem%' OR dmsp.tieu_de LIKE '%$timkiem%' AND sp.trang_thai = 1";
        return $this->getData($sql);
    }
    function tim_kiem_all(){
        $sql = "SELECT * FROM san_pham";
        return $this->getData($sql);
    }
    function tim_kiem_dm($timkiem){
        $sql = "SELECT * FROM `san_pham` sp JOIN `danhmuc_sp` dmsp ON sp.id_dm_sp=dmsp.Id_dm_sp
                WHERE sp.tieu_de LIKE '%$timkiem%' OR dmsp.tieu_de LIKE '%$timkiem%' AND sp.trang_thai = 1";
        return $this->getData($sql);
    }
    function tim_kiem_shop($tukhoa){
        $sql ="SELECT * FROM `san_pham` sp JOIN `nguoi_dung` nd ON sp.ten_dang_nhap=nd.ten_dang_nhap
               WHERE sp.ten_dang_nhap = '$tukhoa' AND sp.trang_thai = 1";
        return $this->getData($sql);
    }
    function tim_kiem_gia($id){
        $sql = "SELECT * FROM san_pham WHERE gia_giam <= '$id'";
        return $this->getData($sql);
    }
}
?>