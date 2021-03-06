<?php
class timkiemController
{
    private $timkiemModel;
    private $dmSPModel;

    function __construct()
    {
        $this->timkiemModel = model('timkiemModel');
        $this->dmSPModel = model('dm_san_phamModel');
    }

    function index()
    {
        if (isset($_POST['btn-timkiem'])) {

            if (!empty($_POST['tim-kiem'])) {
                $tukhoa = $_POST['tim-kiem'];
                $sanPham = $this->timkiemModel->tim_kiem($tukhoa);
            } else {
                $tukhoa = "Bạn chưa tìm gì";
                $sanPham = $this->timkiemModel->tim_kiem_all();
            }
        } else {
            $tukhoa = "Bạn chưa tìm gì";
            $sanPham = $this->timkiemModel->tim_kiem_all();
        }
        $dmSP = $this->dmSPModel->get_dm_sp_all();
        //Tận cùng của nổi đau
        view('trangChinh/timkiemView', 'site', [
            'danhMuc' => $dmSP,
            'tukhoa' => $tukhoa,
            'view' => $sanPham
        ]);
    }
    function dm()
    {
        if (isset($_GET['id'])) {
            $tukhoa = $_GET['id'];
            $sanPham = $this->timkiemModel->tim_kiem_dm($tukhoa);
        } else {
            $sanPham = $this->timkiemModel->tim_kiem_all();
        }
        $dmSP = $this->dmSPModel->get_dm_sp_all();
        //Tận cùng của nổi đau
        view('trangChinh/timkiemView', 'site', [
            'danhMuc' => $dmSP,
            'tukhoa' => $tukhoa,
            'view' => $sanPham
        ]);
    }
    function shop()
    {
        if (isset($_GET['id'])) {
            $tukhoa = $_GET['id'];
            $sanPham = $this->timkiemModel->tim_kiem_shop($tukhoa);
        }
        $dmSP = $this->dmSPModel->get_dm_sp_all();
        view('trangChinh/timkiemView', 'site', [
            'danhMuc' => $dmSP,
            'tukhoa' => $tukhoa,
            'view' => $sanPham
        ]);
    }
    function gia()
    {
        if (isset($_GET['id'])) {
            $tukhoa = $_GET['id'];
            $sanPham = $this->timkiemModel->tim_kiem_gia($tukhoa);
        }
        $dmSP = $this->dmSPModel->get_dm_sp_all();
        view('trangChinh/timkiemView', 'site', [
            'danhMuc' => $dmSP,
            'tukhoa' => $tukhoa,
            'view' => $sanPham
        ]);
    }
}
