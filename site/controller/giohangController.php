<?php
class giohangController
{
    private $san_phamModel;
    private $nguoi_dungModel;
    private $date;
    private $hoaDonModel;
    private $magiamModel;
    private $gio_hangModel;

    function __construct()
    {
        checkLogin2();
        $this->san_phamModel = model('san_phamModel');
        $this->nguoi_dungModel = model('nguoi_dungModel');
        $this->date = new DateTime();
        $this->hoaDonModel = model('hoaDonModel');
        $this->magiamgiaModel = model('magiamgiaModel');
        $this->gio_hangModel = model('gio_hangModel');
    }

    public function index()
    {
        $ten_dang_nhap = $_SESSION['login'][0];
        $gio_hang = [];
        $gio_hang = $this->gio_hangModel->get_gio_hang_by_tenDN($ten_dang_nhap);
        $magiam = $this->magiamgiaModel->get_magiam_by_tenDN($ten_dang_nhap);

        
        view('trangChinh/giohangView', 'site', [
            'gio_hang' => $gio_hang,
            'magiam' => $magiam
        ]);
    }

    public function add_gio_hang()
    {
        $ten_dang_nhap = $_SESSION['login'][0];
        $id_sanpham = $_GET['id'];
        $so_luong = $_GET['soluong'];
        $san_pham = $this->san_phamModel->get_id_sanPham($id_sanpham);
        $tong_tien = $san_pham['gia_giam'] * $so_luong;
        $kt = $this->gio_hangModel->add_giohang($ten_dang_nhap,$id_sanpham,$so_luong,$tong_tien);
        if($kt){
            echo "Add thành công";
        }
        else{
            echo "Add thất bại";
        }
    }

    public function delete_cart()
    {
        $ten_dang_nhap = $_SESSION['login'][0];
        $id_giohang = $_GET['id'];

        $this->gio_hangModel->delete_gio_hang($id_giohang);

        header('location: ?c=giohang&a=index');
    }

    public function capNhapSoLuong()
    {
        if (isset($_GET['id_sanpham'])) {
            $id_sanpham = $_GET['id_sanpham'];
            $so_luong = $_GET['so_luong'];
            $ten_dang_nhap = $_SESSION['login'][0];
            $tong_tien = $_GET['tong_tien'];

            $this->gio_hangModel->update_giohang($id_sanpham, $so_luong, $ten_dang_nhap, $tong_tien);
        }
    }

    public function thanh_toan()
    {
        if (isset($_POST['btn-submit'])) {
            // Tìm tên shop 
            $ten_dang_nhap = $_SESSION['login'][0];
            $gio_hang = $this->gio_hangModel->get_gio_hang_by_tenDN1($ten_dang_nhap);
            $gio_hang_tam = [];
            $index = 0;
            foreach($gio_hang as $val){
                $gio_hang_tam[$index] = $val[4];
                $index ++;
            }
            $tenshop = array_unique($gio_hang_tam);
            // end
            $tamp = [];
            foreach($tenshop as $key => $val){
                $tamp[$key] = $this->gio_hangModel->get_sanpham_in_giohang($ten_dang_nhap, $val);
            }
            foreach($tamp as $val1){
                $tong_tien = 0;
                foreach($val1 as $val2){
                    $tong_tien += $val2[2];
                }
                echo $tong_tien . ' ';
                $id_hoa_don = 'hd' . mt_rand(1, 999999);
                $data = [
                    'tong_tien' => $tong_tien,
                    'ten_dang_nhap' => $_SESSION['login'][0],
                    'ngay_mua' => date_format($this->date, 'Y-m-d H:i:s'),
                    'id_hoa_don' => $id_hoa_don
                ];
                $this->hoaDonModel->insert_hoa_don($data);
                $cart = $val1;
                foreach ($cart as $val3) {
                    $data2 = [
                        'id_hoa_don' => $id_hoa_don,
                        'id_sanpham' => $val3[0],
                        'so_luong' => $val3[3],
                        'tong_tien' => $val3[3] * $val3[2]
                    ];
                    $this->san_phamModel->update_so_luong($val3[0], $val3[3]);
                    $this->hoaDonModel->insert_hdct($data2);
                }
            }
            $this->gio_hangModel->delete_giohang_by_tenDN($ten_dang_nhap);
            header('location: ?c=giohang&a=index');
        }
    }
}
