<?php
class giohangController
{
    private $san_phamModel;
    private $nguoi_dungModel;
    private $date;
    private $hoaDonModel;


    function __construct()
    {
        checkLogin2();
        $this->san_phamModel = model('san_phamModel');
        $this->nguoi_dungModel = model('nguoi_dungModel');
        $this->date = new DateTime();
        $this->hoaDonModel = model('hoaDonModel');
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

        header('location: ?c=giohang&a=index');
    }

    public function capNhapSoLuong()
    {
        if (isset($_GET['id_sanpham'])) {
            $id_sanpham = $_GET['id_sanpham'];
            $so_luong = $_GET['so_luong'];
            $ten_dang_nhap = $_SESSION['login'][0];
            $tong_tien = $_GET['tong_tien'];

            $_SESSION['cart' . $ten_dang_nhap][$id_sanpham]['so_luong_mua'] = $so_luong;
            $_SESSION['cart' . $ten_dang_nhap][$id_sanpham]['tong_tien'] = $tong_tien;
        }
    }

    public function thanh_toan()
    {
        if (isset($_POST['btn-submit'])) {
            $id_hoa_don = 'hd' . mt_rand(1, 999999);
            $ten_dang_nhap = $_SESSION['login'][0];
            $data = [
                'tong_tien' => $_POST['tong_tien'],
                'ten_dang_nhap' => $_SESSION['login'][0],
                'ngay_mua' => date_format($this->date, 'Y-m-d H:i:s'),
                'id_hoa_don' => $id_hoa_don
            ];
            $this->hoaDonModel->insert_hoa_don($data);
            $cart = $_SESSION['cart' . $ten_dang_nhap];
            foreach ($cart as $value) {
                $data2 = [
                    'id_hoa_don' => $id_hoa_don,
                    'id_sanpham' => $value['id_sanpham'],
                    'so_luong' => $value['so_luong_mua'],
                ];
                $this->hoaDonModel->insert_hdct($data2);
            }

            unset($_SESSION['cart' . $ten_dang_nhap]);
            header('location: ?c=giohang&a=index');
        }
    }
}
