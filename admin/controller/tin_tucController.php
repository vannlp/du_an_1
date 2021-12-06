<?php
class tin_tucController
{
    private $tin_tucModel;
    private $date;


    function __construct()
    {
        $this->tin_tucModel = model('tin_tucModel');
        $this->date = new DateTime();
    }

    function index()
    {
        $thongbao = '';
        if (isset($_POST['btn-submit'])) {
            $data = [
                'id_dm_tin' => $_POST['danhMuc'],
                'tieu_de' => $_POST['title'],
                'noi_dung' => $_POST['noiDung'],
                'img' => upFile('anh', URL . '/public/site/img/'),
                'ngay_dang' => date_format($this->date, 'Y-m-d H:i:s'),
                'ten_dang_nhap' => $_SESSION['login'][0]
            ];
            $thongbao = $this->tin_tucModel->add_tin_tuc($data) ? 'Thêm thành công' : 'Thêm thất bại';
        }
        $dataDanhMuc = $this->tin_tucModel->get_danh_muc_tin();
        view('newAdmin/addNewView', 'admin', [
            'thongBao' => $thongbao,
            'danhMuc' => $dataDanhMuc
        ]);
    }

    function list_bai_viet()
    {

        $listNews = $this->tin_tucModel->get_tin_tuc();
        view('newAdmin/listView', 'admin', [
            'listNews' => $listNews
        ]);
    }

    public function add_dm()
    {
        $thongbao = '';
        if (isset($_POST['btn-submit-dm'])) {
            $tieu_de = $_POST['tendm'];
            $noi_dung = $_POST['mota'];
            $thongbao = $this->tin_tucModel->insert_dm_tin($tieu_de, $noi_dung);
        }
        $dataDanhMuc = $this->tin_tucModel->get_danh_muc_tin();
        view('newAdmin/dmNewView', 'admin', [
            'isSuccess' => $thongbao,
            'dataDanhMuc' => $dataDanhMuc
        ]);
    }

    public function edit_dm()
    {
        $thongbao = '';
        if (isset($_POST['btn-submit-dm'])) {
            $id_dm_tin = $_GET['id'];
            $tieu_de = $_POST['tendm'];
            $noi_dung = $_POST['mota'];
            $thongbao = $this->tin_tucModel->update_dm($id_dm_tin, $tieu_de, $noi_dung);
        }
        $dataDMID = $this->tin_tucModel->get_dm_one($_GET['id']);
        $dataDanhMuc = $this->tin_tucModel->get_danh_muc_tin();
        view('newAdmin/dmEditView', 'admin', [
            'dataDMID' => $dataDMID,
            'isSuccess' => $thongbao,
            'dataDanhMuc' => $dataDanhMuc

        ]);
    }

    public function deleteTin()
    {
        $id_tin_tuc = $_GET['id'];
        $this->tin_tucModel->delete_tin($id_tin_tuc);
        header("location: admin.php?c=tin_tuc&a=list_bai_viet");
    }

    public function edit_tin_tuc()
    {
        view('newAdmin/editNewsView', 'admin', []);
    }
}
