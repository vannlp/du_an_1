<?php
class homeController
{
    private $dmSPModel;
    private $sanPhamModel;

    function __construct()
    {
        $this->dmSPModel = model('dm_san_phamModel');
        $this->sanPhamModel = model('san_phamModel');
    }

    public function index()
    {
        $dmSP = $this->dmSPModel->get_dm_sp_all();
        $sanPham = $this->sanPhamModel->get_sanPham();
        //Tận cùng của nổi đau
        view('trangChinh/homeView', 'site', [
            'danhMuc' => $dmSP,
            'sanPham' => $sanPham
        ]);
    }
}
