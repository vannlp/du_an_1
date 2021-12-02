<?php
class giamgiaController
{
    private $magiamModel;

    function __construct()
    {
        checkLogin2();
        $this->magiamgiaModel = model('magiamgiaModel');
    }

    public function index(){

        $magiam = $this->magiamgiaModel->get_magiam();
        view('trangChinh/giamgiaView', 'site', [
            'magiam' => $magiam
        ]);
    }

    function addgiamgia(){
        if(isset($_GET['ma'])){
            $tenDN = $_SESSION['login'][0];
            $ma = $_GET['ma'];
            $kt = $this->magiamgiaModel->add_magiam($tenDN, $ma);
            
            if($kt){
                $thongbao = "Lưu thành công";
            }
            else{
                $thongbao = "Lưu thất bại";
            }
        }
        header('location: ?c=giamgia&a=index');
    }
}