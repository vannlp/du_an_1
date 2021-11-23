<?php

class homeController
{
    function __construct()
    {
    }

    public function index()
    {
        view('home/indexView', 'admin', [
            'a' => '123'
        ]);
    }

    public function index1()
    {
        echo '1123';
    }
}
