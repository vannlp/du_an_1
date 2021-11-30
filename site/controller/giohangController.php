<?php
class giohangController
{
    private $san_phamModel;
    private $nguoi_dungModel;

    function __construct()
    {
        checkLogin2();
        $this->san_phamModel = model('san_phamModel');
        $this->nguoi_dungModel = model('nguoi_dungModel');
    }

    public function index()
    {
        $ten_dang_nhap = $_SESSION['login'][0];

        $gio_hang = [];

        if (isset($_SESSION['cart' . $ten_dang_nhap])) {
            $gio_hang = $_SESSION['cart' . $ten_dang_nhap];
        }
        // print_r($gio_hang);
        view('trangChinh/giohangView', 'site', [
            'gio_hang' => $gio_hang
        ]);
    }

    public function add_gio_hang()
    {
        $ten_dang_nhap = $_SESSION['login'][0];
        $id_sanpham = $_GET['id'];
        $so_luong = $_GET['soluong'];

        $san_pham = $this->san_phamModel->get_id_sanPham($id_sanpham);
        $san_pham['so_luong_mua'] = $so_luong;
        $_SESSION['cart' . $ten_dang_nhap][$id_sanpham] = $san_pham;
        echo '123';
    }

    public function delete_cart()
    {
        $ten_dang_nhap = $_SESSION['login'][0];
        $id_sanpham = $_GET['id'];

        unset($_SESSION['cart' . $ten_dang_nhap][$id_sanpham]);
    }
}
