<?php
class timkiemController
{
    private $timkiemModel;

    function __construct(){
        $this->timkiemModel = model('timkiemModel');
    }

    public function index()
    {
        if(isset($_POST['btn-search'])){
            $timkiem = $_POST['timkiem'];
            $sanPham = $this->timkiemModel->tim_kiem($timkiem);
        }
        else{
            $sanPham = $this->timkiemModel->tim_kiem_all();
        }
        
        //Tận cùng của nổi đau
        view('trangChinh/timkiemView', 'site', [
            'tukhoa'=>$timkiem,
            'view'=>$sanPham
        ]);
    }


}