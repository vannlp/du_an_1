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

    function get_hoa_don($tenshop)
    {
        $sql = "SELECT hd.id_hoa_don, nd.ho_ten, hd.tong_tien, hd.ngay_mua, hd.trang_thai, nd.ten_dang_nhap
        FROM hoa_don hd JOIN hoa_don_chi_tiet hdct ON hd.id_hoa_don=hdct.id_hoa_don 
        JOIN san_pham sp ON sp.id_sanpham=hdct.id_sanpham 
        JOIN nguoi_dung nd ON hd.ten_dang_nhap = nd.ten_dang_nhap
        WHERE sp.ten_dang_nhap = '$tenshop'
        group by sp.ten_dang_nhap
        order by hd.ngay_mua desc";
        return $this->getData($sql);
    }

    function get_hoa_don_cua_toi($user)
    {
        $sql = "SELECT * FROM hoa_don WHERE ten_dang_nhap = '$user'";
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

    function get_thong_ke($ten_dang_nhap)
    {
        $sql = "SELECT sp.tieu_de, sp.so_luong, sum(hdct.so_luong), sum(hdct.tong_tien) 
        from hoa_don_chi_tiet hdct join san_pham sp
        on hdct.id_sanpham = sp.id_sanpham
        join hoa_don hd on hd.id_hoa_don = hdct.id_hoa_don
        where sp.ten_dang_nhap = '$ten_dang_nhap' and hd.trang_thai=3
        GROUP by hdct.id_sanpham
        ";
        return $this->getData($sql);
    }
}
