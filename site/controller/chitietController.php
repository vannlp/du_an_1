<?php
class chitietController
{

    private $sanPhamIDModel;
    private $imgsModel;
    private $binhluanModel;

    function __construct()
    {
        $this->sanPhamIDModel = model('san_phamModel');
        $this->imgsModel = model('imgsModel');
        $this->binhluanModel = model('binh_luanModel');
    }

    public function index()
    {
        if (isset($_GET['id'])) {
            $id = $_GET['id'];
            $sanPhamID = $this->sanPhamIDModel->get_id_sanPham($id);
            $iddm = $sanPhamID[1];
            $sanPhamLQ = $this->sanPhamIDModel->get_id_dm_by_id_sanPham($iddm);
            $img = $this->imgsModel->get_img_idSanPham($id);
            $binhluan = $this->binhluanModel->get_binhluan_by_idSP($id);
            // print_r($img);

            view('trangChinh/chitietSPView', 'site', [
                'sanPhamID' => $sanPhamID,
                'sanPhamLQ' => $sanPhamLQ,
                'img' => $img,
                'binhluan' => $binhluan
            ]);
        }
    }


    public function binh_luan_ajax()
    {
        echo $_GET['soSao'] . $_GET['text'];
    }
}
