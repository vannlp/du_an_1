<?php
class quan_lyController
{
    private $hoaDonModel;
    private $nguoi_dungModel;

    function __construct()
    {
        checkLogin2();
        $this->hoaDonModel = model('hoaDonModel');
        $this->nguoi_dungModel = model('nguoi_dungModel');
    }

    public function index()
    {
        view('account/quan_ly_tkView', 'site', []);
    }

    public function hoadon()
    {
        $tenshop = $_SESSION['login'][0];
        $hoa_don = $this->hoaDonModel->get_hoa_don($tenshop);
        view('quan_ly/hoadonView', 'site', [
            'data-hoaDon' => $hoa_don
        ]);
    }

    public function hdct()
    {
        $id_hoa_don = $_GET['id'];
        $hdct = $this->hoaDonModel->get_hdct($id_hoa_don);

        view('quan_ly/hoadonCTView', 'site', [
            'hdct' => $hdct
        ]);
    }

    public function change_tinh_trang_don()
    {
        $id_hoa_don = $_GET['id_hoa_don'];
        $trang_thai = $_GET['trang_thai'];

        $this->hoaDonModel->update_tinh_trang_don($id_hoa_don, $trang_thai);
    }

    public function hoadoncuatoi()
    {
        $user = $_SESSION['login'][0];
        $hoa_don = $this->hoaDonModel->get_hoa_don_cua_toi($user);
        view('quan_ly/hoadoncuatoiView', 'site', [
            'data-hoaDon' => $hoa_don
        ]);
    }

    public function thongke()
    {
        $ten_dang_nhap = $_SESSION['login'][0];
        $thongke = $this->hoaDonModel->get_thong_ke($ten_dang_nhap);

        view('quan_ly/thongkeView', 'site', [
            'thong_ke' => $thongke
        ]);
    }

    public function khach()
    {
        if (isset($_POST['btn-khach'])) {
            $ten_dang_nhap = $_POST['id'];
            $idhd = $_POST['idhd'];
            $chitiet = $this->nguoi_dungModel->get_nguoi_dung_username($ten_dang_nhap);
            view('quan_ly/khachView', 'site', [
                'khach' => $chitiet,
                'hoadon' => $idhd
            ]);
        } else {
            header('location: ?c=quan_ly&a=hoadon');
        }
    }
}
