<?php
class san_phamController
{
    private $sanphamModel;
    private $dm_san_phamModel;
    private $date;
    private $imgsModel;

    function __construct()
    {
        checkLogin2();
        $this->sanphamModel = model('san_phamModel');
        $this->dm_san_phamModel = model('dm_san_phamModel');
        $this->date = new DateTime();
        date_timezone_set($this->date, timezone_open('Asia/Ho_Chi_Minh'));
        $this->imgsModel = model('imgsModel');
    }

    public function add_san_pham()
    {
        if (isset($_POST['btn-submit'])) {
            $id_sanpham = 'sp' . mt_rand(1, 999999);
            $data = [
                'id_sanpham' => $id_sanpham,
                'id_dm_sp' => $_POST['id_dm_sp'],
                'ten_dang_nhap' => $_SESSION['login'][0],
                'tieu_de' => $_POST['tieu_de'],
                'noi_dung' => $_POST['noi_dung'],
                'gia_goc' => $_POST['gia_goc'],
                'ngay_dang' => date_format($this->date, 'Y-m-d H:i:s'),
                'img' => upFile('img', URL . '/public/site/img/'),
                'so_luong' => $_POST['so_luong']
            ];

            if ($_POST['gia_giam'] != '') {
                $data['gia_giam'] = $_POST['gia_giam'];
            }
            // print_r($data);
            // xu ly phan hinh anh
            $arrImg = explode(';', $_POST['img_mo_ta']);
            // print_r($arrImg);
            $isSucces = $this->sanphamModel->insert_san_pham($data);
            // echo $isSucces;
            $this->imgsModel->update_img_sanpham($id_sanpham, $arrImg);
        }



        $dm_sp = $this->dm_san_phamModel->get_dm_sp_all();
        view('san_pham/addSPView', 'site', [
            'dm_sp' => $dm_sp
        ]);
    }

    public function list_san_pham()
    {
        $data_san_pham = $this->sanphamModel->get_san_pham_username($_SESSION['login'][0]);

        view('san_pham/listView', 'site', [
            'dataSP' => $data_san_pham
        ]);
    }

    public function edit()
    {
        if (isset($_GET['id'])) {
            $id_sanpham = $_GET['id'];
            $data_san_pham = $this->sanphamModel->get_id_sanPham($id_sanpham);
            $dm_sp = $this->dm_san_phamModel->get_dm_sp_all();
        }

        view('san_pham/editView', 'site', [
            'dataSP' => $data_san_pham,
            'dm_sp' => $dm_sp
        ]);
    }
}
