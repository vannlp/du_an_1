<?php
class imgController
{
    private $imgsModel;

    function __construct()
    {
        $this->imgsModel = model('imgsModel');
    }

    public function add_img()
    {
        $thong_bao = '';
        if (isset($_POST['btn-submit'])) {
            $data = [
                'ten_dang_nhap' => $_SESSION['login'][0],
                'link_img' => upFile('img', URL . '/public/site/img/')
            ];

            $thong_bao = $this->imgsModel->insert_img_username($data) ? 'Thêm thành công' : 'Thêm thất bại';
        }

        $dataImgs = $this->imgsModel->get_img_username($_SESSION['login'][0]);

        view('imgs/addImg', 'site', [
            'thong_bao' => $thong_bao,
            'dataImg' => $dataImgs
        ]);
    }

    public function list_img_ajax()
    {
        $dataList = $this->imgsModel->get_img_username($_SESSION['login'][0]);
        echo json_encode($dataList);
    }
}
