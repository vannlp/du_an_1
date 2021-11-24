<?php
class san_phamController
{
    private $sanphamModel;

    function __construct()
    {
        $this->sanphamModel = model('san_phamModel');
    }

    public function add_san_pham()
    {
        view('san_pham/addSPView', 'site', []);
    }
}
