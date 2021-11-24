<?php
class chitietController
{

    private $sanPhamIDModel;
    private $imgsModel;

    function __construct()
    {
        $this->sanPhamIDModel = model('san_phamModel');
        $this->imgsModel = model('imgsModel');
    }

    public function index()
    {
        if (isset($_GET['id'])) {
            $id = $_GET['id'];
            $sanPhamID = $this->sanPhamIDModel->get_id_sanPham($id);
            $iddm = $sanPhamID[1];
            $sanPhamLQ = $this->sanPhamIDModel->get_id_dm_by_id_sanPham($iddm);
            $img = $this->imgsModel->get_img_idSanPham($id);
            // print_r($img);

            view('trangChinh/chitietSPView', 'site', [
                'sanPhamID' => $sanPhamID,
                'sanPhamLQ' => $sanPhamLQ,
                'img' => $img
            ]);
        }
    }
}
