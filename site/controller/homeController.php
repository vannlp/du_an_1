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
        $dmSP = $this->dmSPModel->get_dm_sp_all();
        $sanPham = $this->sanPhamModel->get_sanPham();
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
            'tinTucData' => $tin_tucData
        ]);
    }
}
