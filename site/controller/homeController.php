<?php
class homeController
{
    private $dmSPModel;
    private $sanPhamModel;
    private $tin_tucModel;
    private $magiamModel;
    private $date;

    function __construct()
    {
        $this->dmSPModel = model('dm_san_phamModel');
        $this->sanPhamModel = model('san_phamModel');
        $this->tin_tucModel = model('tin_tucModel');
        $this->magiamgiaModel = model('magiamgiaModel');
        $this->date = new DateTime();
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

        $sp_top = $this->sanPhamModel->get_sanpham_top();
        $date = date_format($this->date, 'Y-m-d');
        $somagiamgia = $this->magiamgiaModel->get_so_luong($date);


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
            'so_luong_trang' => $sl_trang,

            'sp_top' => $sp_top,

            'soluongmagiam' => $somagiamgia
        ]);
    }
}
