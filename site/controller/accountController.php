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
        view('account/quan_ly_tkView', 'site', []);
    }
}
