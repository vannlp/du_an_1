<?php
class tintucController
{
    private $tinTucModel;
    function __construct()
    {
        $this->tinTucModel = model('tin_tucModel');
    }

    function index()
    {
        $id_tin_tuc = $_GET['id'];
        $tinTucData = $this->tinTucModel->get_tin_tuc_one($id_tin_tuc);
        view('trangChinh/chitietTinView', 'site', [
            'tinTucData' => $tinTucData
        ]);
    }
}
