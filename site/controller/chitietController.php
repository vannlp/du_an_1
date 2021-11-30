<?php
class chitietController
{

    private $sanPhamIDModel;
    private $imgsModel;
    private $binhluanModel;
    private $date;

    function __construct()
    {
        $this->sanPhamIDModel = model('san_phamModel');
        $this->imgsModel = model('imgsModel');
        $this->binhluanModel = model('binh_luanModel');
        $this->date = new DateTime();
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
        if(isset($_GET['soSao']) && isset($_GET['text'])){
            echo $_GET['soSao'];
            $data = [
                'id' => 'null', //lỗi//
                'tenDN' => $_SESSION['login'][0],
                'text' => $_GET['text'],
                'ngay_dang' => date_format($this->date, 'Y-m-d H:i:s'),
                'soSao' => $_GET['soSao']
            ];
            
            $binhluan = $this->binhluanModel->add_binhluan($data);
            if($binhluan){
                echo 'Bình luận đã gửi';
            }
            else{
                echo 'Bình luận thất bại';
            }
        }
        else{
            echo 'không gửi được bình luận';
        }
        
    }
}
