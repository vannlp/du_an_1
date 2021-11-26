<?php
class quan_lyController
{
    function __construct()
    {
        cleckLogin2();
    }

    public function index()
    {
        view('account/quan_ly_tkView', 'site', []);
    }
}
