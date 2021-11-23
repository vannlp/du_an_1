<?php
class homeController
{
    public function index()
    {
        view('trangChinh/homeView', 'site', []);
    }
}
