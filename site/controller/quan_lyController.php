<?php
class quan_lyController
{
    private $hoaDonModel;

    function __construct()
    {
        checkLogin2();
        $this->hoaDonModel = model('hoaDonModel');
    }

    public function index()
    {
        view('account/quan_ly_tkView', 'site', []);
    }

    public function hoadon()
    {
        $hoa_don = $this->hoaDonModel->get_hoa_don();
        view('quan_ly/hoadonView', 'site', [
            'data-hoaDon' => $hoa_don
        ]);
    }

    public function change_tinh_trang_don()
    {
        $id_hoa_don = $_GET['id_hoa_don'];
        $trang_thai = $_GET['trang_thai'];

        $this->hoaDonModel->update_tinh_trang_don($id_hoa_don, $trang_thai);
    }
}
