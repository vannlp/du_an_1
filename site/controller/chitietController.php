<?php
class chitietController
{

    private $sanPhamIDModel;

    function __construct(){
        $this->sanPhamIDModel = model('san_phamModel');
    }

    public function index()
    {
        if(isset($_GET['id'])){
            $id = $_GET['id'];
            $sanPhamID = $this->sanPhamIDModel->get_sanPham($id);
            view('trangChinh/chitietSPView', 'site', [
                'sanPhamID'=>$sanPhamID
            ]);
        }
    }
}
