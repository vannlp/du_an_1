<?php

class nguoidungController
{
    private $nguoidungModel;

    function __construct()
    {
        checkLogin3();
        $this->nguoidungModel = model('nguoi_dungModel');
    }

    public function index()
    {
        $danhsach = $this->nguoidungModel->get_nguoi_dung_admin();
        view('nguoidung/listView', 'admin', [
            'danhsach' => $danhsach
        ]);
    }

    function khachhang_update()
    {
        if (isset($_GET['khachhang'])) {
            $khachhang = $_GET['khachhang'];
            $ten_dang_nhap = $_GET['id_kh'];
            $tamp = $_GET['tamp'];
            $this->nguoidungModel->update_khach_hang($khachhang, $ten_dang_nhap, $tamp);
        }
    }
}
