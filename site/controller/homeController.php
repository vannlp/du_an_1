<?php
class homeController
{
    private $dmSPModel;
    private $sanPhamModel;
    private $tin_tucModel;

    function __construct()
    {
        $this->dmSPModel = model('dm_san_phamModel');
        $this->sanPhamModel = model('san_phamModel');
        $this->tin_tucModel = model('tin_tucModel');
    }

    public function index()
    {
        $so_trang = 1;
        if (isset($_GET['page'])) {
            $so_trang = $_GET['page'];
        }
        $sp = $this->sanPhamModel->get_sanPham();
        $sl_trang = count($sp);
        $sl_trang = ceil($sl_trang / 10);
        $dmSP = $this->dmSPModel->get_dm_sp_all();
        $sanPham = $this->sanPhamModel->get_sanPham_phantrang($so_trang);
        $tin_tucData =  $this->tin_tucModel->get_tin_tuc_for_slider();


        for ($i = 0; $i < count($sanPham); $i++) {
            $id_sanpham = $sanPham[$i][0];
            $sanPham[$i]['so_luong_ban'] = $this->sanPhamModel->get_so_luong_ban($id_sanpham);
            if ($sanPham[$i]['so_luong_ban'] == null) {
                $sanPham[$i]['so_luong_ban'] = 0;
            }
        }


        view('trangChinh/homeView', 'site', [
            'danhMuc' => $dmSP,
            'sanPham' => $sanPham,
            'tinTucData' => $tin_tucData,
            'so_luong_trang' => $sl_trang
        ]);
    }
}
