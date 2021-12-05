<?php
class giamgiaController
{
    private $magiamModel;
    private $date;

    function __construct()
    {
        checkLogin2();
        $this->magiamgiaModel = model('magiamgiaModel');
        $this->date = new DateTime();
        date_timezone_set($this->date, timezone_open('Asia/Ho_Chi_Minh'));
    }

    public function index()
    {
        $date1 = date_format($this->date, 'Y-m-d');
        $magiam = $this->magiamgiaModel->get_magiam($date1);
        view('trangChinh/giamgiaView', 'site', [
            'magiam' => $magiam
        ]);
    }

    function addgiamgia()
    {
        if (isset($_GET['ma'])) {
            $tenDN = $_SESSION['login'][0];
            $ma = $_GET['ma'];
            $kt = $this->magiamgiaModel->add_magiam($tenDN, $ma);

            if ($kt) {
                $thongbao = "Lưu thành công";
            } else {
                $thongbao = "Lưu thất bại";
            }
        }
        header('location: ?c=giamgia&a=index');
    }
}
