<?php
class chitietController
{

    private $sanPhamIDModel;
    private $imgsModel;
    private $binhluanModel;
    private $date;
    private $magiamModel;
    private $hoadonModel;


    function __construct()
    {
        $this->sanPhamIDModel = model('san_phamModel');
        $this->imgsModel = model('imgsModel');
        $this->binhluanModel = model('binh_luanModel');
        $this->date = new DateTime();
        $this->magiamgiaModel = model('magiamgiaModel');
        $this->hoadonModel = model('hoaDonModel');
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
            $so_luong_ban = $this->sanPhamIDModel->get_so_luong_ban($id);
            $tenDM = $this->sanPhamIDModel->get_ten_dm($id);
            $magiam = '';
            $binhluankt = '';
            if (isset($_SESSION['login'])) {
                $ten_dang_nhap = $_SESSION['login'][0];
                $magiam = $this->magiamgiaModel->get_magiam_by_tenDN($ten_dang_nhap);
                //
                $hoadon = $this->hoadonModel->binhluan_hoadon($ten_dang_nhap, $id);
                if($hoadon > 0 ){
                    $binhluankt = 'true';
                }
                else{
                    $binhluankt = 'fales';
                }
            }

            if ($so_luong_ban == null) {
                $so_luong_ban = 0;
            }
            // print_r($binhluan);

            view('trangChinh/chitietSPView', 'site', [
                'sanPhamID' => $sanPhamID,
                'sanPhamLQ' => $sanPhamLQ,
                'img' => $img,
                'binhluan' => $binhluan,
                'so_luong_ban' => $so_luong_ban,
                'maGiam' => $magiam,
                'tenDM' => $tenDM,
                'blkt' => $binhluankt
            ]);
        }
    }

    public function binh_luan_ajax()
    {
        if (isset($_GET['soSao']) && isset($_GET['text'])) {
            $data = [
                'id' => $_GET['idSP'], //l???i//
                'tenDN' => $_SESSION['login'][0],
                'text' => $_GET['text'],
                'ngay_dang' => date_format($this->date, 'Y-m-d H:i:s'),
                'soSao' => $_GET['soSao']
            ];
            $binhluan = $this->binhluanModel->add_binhluan($data);
            $upsao = $this->binhluanModel->get_Sao_binhluan_by_idSP($data);
            $this->binhluanModel->Upsao($upsao[0], $data);
            $binhluan2 = $this->binhluanModel->get_binhluan_by_idSP($_GET['idSP']);
            if ($binhluan) {
                echo json_encode($binhluan2);
            } else {
                echo 'B??nh lu???n th???t b???i';
            }
        } else {
            echo 'kh??ng g???i ???????c b??nh lu???n';
        }
    }
}
