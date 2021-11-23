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
}
