<?php
class san_phamController
{
    private $dm_san_phamModel;

    function __construct()
    {
        $this->dm_san_phamModel = model('dm_san_phamModel');
    }

    public function add_danh_muc()
    {
        $isSuccess = false;

        if (isset($_POST['btn-submit-dm'])) {
            $data = [
                'tieu_de' => $_POST['tieu_de'],
                'noi_dung' => $_POST['noi_dung'],
                'img' => upFile('img', URL . '/public/site/img/')
            ];

            $isSuccess = $this->dm_san_phamModel->insert_dm_sp($data);
        }
        $list_dm_sp = $this->list_danh_muc();
        view('san_pham/addView', 'admin', [
            'isSuccess' => $isSuccess,
            'list_dm_sp' => $list_dm_sp
        ]);
    }

    public function edit_danh_muc()
    {
        $id_dm_sp = $_GET['id'];

        if (isset($_POST['btn-submit-dm'])) {
            $img = $this->dm_san_phamModel->get_img($id_dm_sp);
            $hinh = updateFile('img', URL . '/public/site/img/', $img);

            $data = [
                'tieu_de' => $_POST['tieu_de'],
                'noi_dung' => $_POST['noi_dung'],
                'img' => $hinh,
                'id_dm_sp' => $id_dm_sp
            ];

            $this->dm_san_phamModel->update_dm_sp($data);
        }

        $dataDM = $this->dm_san_phamModel->get_dm_sp_one($id_dm_sp);
        $list_dm_sp = $this->list_danh_muc();
        view('san_pham/editView', 'admin', [
            'list_dm_sp' => $list_dm_sp,
            'dataDM' => $dataDM
        ]);
    }

    private function list_danh_muc()
    {
        return $this->dm_san_phamModel->get_dm_sp_all();
    }

    public function delete()
    {
        if (isset($_GET['id'])) {
            $id_dm_sp = $_GET['id'];
            $this->dm_san_phamModel->delete_dm_sp($id_dm_sp);
            header('location: ?c=san_pham&a=add_danh_muc');
        }
    }
}
