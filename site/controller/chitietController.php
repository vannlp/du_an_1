<?php
class chitietController
{

    private $sanPhamIDModel;

    function __construct()
    {
        $this->sanPhamIDModel = model('san_phamModel');
    }

    public function index()
    {
        if (isset($_GET['id'])) {
            $id = $_GET['id'];
            $iddm = $_GET['id'];
            $sanPhamID = $this->sanPhamIDModel->get_sanPham($id);
            $sanPhamLQ = $this->sanPhamIDModel->get_id_dm_by_id_sanPham($iddm);
            view('trangChinh/chitietSPView', 'site', [
                'sanPhamID' => $sanPhamID,
                'sanPhamLQ' => $sanPhamLQ
            ]);
        }
    }
}
