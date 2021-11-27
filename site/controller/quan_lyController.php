<?php
class quan_lyController
{
    function __construct()
    {
        checkLogin2();
    }

    public function index()
    {
        view('account/quan_ly_tkView', 'site', []);
    }
}
