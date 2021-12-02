<?php
class hoaDonModel extends DB
{
    function insert_hoa_don($data = [])
    {
        extract($data);
        $sql = "INSERT into hoa_don values('$id_hoa_don', '$ten_dang_nhap', '$tong_tien', '$ngay_mua', null, 0)";
        return $this->setData($sql);
    }
    function insert_hdct($data = [])
    {
        extract($data);
        $sql = "INSERT into hoa_don_chi_tiet values(null, '$id_sanpham', '$id_hoa_don',
        $so_luong, null, $tong_tien)";
        return $this->setData($sql);
    }

    function get_hoa_don()
    {
        $sql = "SELECT hd.id_hoa_don, nd.ho_ten, hd.tong_tien, hd.ngay_mua, hd.trang_thai
        from hoa_don hd inner join nguoi_dung nd 
        on hd.ten_dang_nhap = nd.ten_dang_nhap order by hd.ngay_mua desc";
        return $this->getData($sql);
    }

    function update_tinh_trang_don($id_hoa_don, $trang_thai)
    {
        $sql = "UPDATE hoa_don set trang_thai = $trang_thai where id_hoa_don='$id_hoa_don'";
        return $this->setData($sql);
    }

    function get_hdct($id_hoa_don)
    {
        $sql = "SELECT sp.tieu_de, hdct.so_luong, hdct.tong_tien
        from hoa_don_chi_tiet hdct inner join san_pham sp
        on hdct.id_sanpham = sp.id_sanpham where hdct.id_hoa_don = '$id_hoa_don'";
        return $this->getData($sql);
    }
}
