<?php

class saleController

{
    private $ma_giam_giaModel;
    function __construct()
    {
        checkLogin();
        $this->ma_giam_giaModel = model('magiamgiaModel');
    }



    public function index()
    {
        if (isset($_POST['btn_submit'])) {
            $data = [
                'id_ma_giam_gia' => $_POST['giam_gia'],
                'phan_tram_giam_gia' => $_POST['PTGG'],
                'ngay_bat_dau' => $_POST['NBD'],
                'ngay_ket_thuc' => $_POST['NKT'],
            ];
            $this->ma_giam_giaModel->addsale($data);
        }
        view("sale/addsaleView", "admin", []);
    }

    public function list()
    {
        $maGiam = $this->ma_giam_giaModel->get_sale();

        view("sale/listView", "admin", [
            'ma_giam' => $maGiam
        ]);
    }

    public function delete()
    {
        $id = $_GET['id'];
        $this->ma_giam_giaModel->delete_sale($id);
        header('location: ?c=sale&a=list');
    }
}
