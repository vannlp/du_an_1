<?php
class accountController
{
    private $nguoi_dungModel;

    function __construct()
    {
        $this->nguoi_dungModel = model('nguoi_dungModel');
    }

    public function login()
    {
        $thong_bao = '';
        if (isset($_POST['btn-submit'])) {
            // lay thong tin tu csdl
            $data = $this->nguoi_dungModel->get_nguoi_dung_all();
            $ten_dang_nhap = $_POST['ten_dang_nhap'];
            $mat_khau = md5($_POST['mat_khau']);
            foreach ($data as $value) {
                if ($ten_dang_nhap == $value[0] && $mat_khau == $value[1]) {
                    $_SESSION['login'] = $value;
                    if ($_SESSION['login'][10] == 1) {
                        header('location: /admin.php');
                    } else {
                        header('location: /index.php');
                    }
                    break;
                } else {
                    $thong_bao = 'Đăng nhập thất bại';
                }
            }
        }
        view('account/loginView', 'site', [
            'thong_bao' => $thong_bao
        ]);
    }

    public function logout()
    {
        if (isset($_SESSION['login'])) {
            unset($_SESSION['login']);
        }
        header('location: /index.php');
    }

    public function signup()
    {
        $thong_bao = '';
        if (isset($_POST['btn-signup'])) {
            if ($_POST['matkhau'] == $_POST['matkhau1']) {
                $signup = [
                    'hoten' => $_POST['hoten'],
                    'email' => $_POST['email'],
                    'tenDN' => $_POST['tenDN'],
                    'matkhau' => md5($_POST['matkhau'])
                ];
                $ktdy = $this->nguoi_dungModel->set_nguoi_dung($signup);
                $thong_bao = "Đăng ký thành công";
                if (!$ktdy) {
                    $thong_bao = "Đăng ký thất bại";
                } else {
                    $thong_bao = "Đăng ký thành công";
                }
            } else {
                $thong_bao = "Mật khẩu nhập lại không chính xác";
            }
        }
        view('account/signupView', 'site', [
            'thong_bao' => $thong_bao
        ]);
    }

    public function quan_ly_tk()
    {
        checkLogin2();

        $imgOld = $this->nguoi_dungModel->get_img_theo_username($_SESSION['login'][0]);
        $ten_dang_nhap = $_SESSION['login'][0];

        if (isset($_POST['btn-submit'])) {
            $data = [
                'ten_dang_nhap' => $ten_dang_nhap,
                'ho_ten' => $_POST['ho_ten'],
                'dia_chi' => $_POST['dia_chi'],
                'sdt' => $_POST['sdt'],
                'cmnd' => $_POST['cmnd'],
                'img' => updateFile('img', URL . '/public/site/img/', $imgOld),
                'email' => $_POST['email'],
                'ngay_sinh' => $_POST['ngay_sinh'],
                'gioi_tinh' => $_POST['gioi_tinh']
            ];
            $this->nguoi_dungModel->update_nguoi_dung($data);
            $_SESSION['login'] = $this->nguoi_dungModel->get_nguoi_dung_username($ten_dang_nhap);
        }

        $nguoi_dung = $_SESSION['login'];


        view('account/quan_ly_tkView', 'site', [
            'nguoi_dung' => $nguoi_dung
        ]);
    }

    function matkhau(){

        checkLogin2();

        view('account/matkhauView', 'site', []);
    }
}
