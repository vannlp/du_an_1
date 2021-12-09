<?php
function model($modelName)
{
    require_once URL . '/model/' . $modelName . '.php';
    return new $modelName;
}

function view($viewName, $vi_tri, $data = [])
{
    if ($vi_tri == 'admin') {
        $page = URL_ADMIN . '/view/' . $viewName . '.php';
        require_once URL . '/public/admin/layout.php';
    } else if ($vi_tri == 'site') {
        $page = URL_SITE . '/view/' . $viewName . '.php';
        require_once URL . '/public/site/layout.php';
    }
}

function upFile($file, $target_dir)
{
    $target_file = $target_dir . basename($_FILES[$file]["name"]);
    move_uploaded_file($_FILES[$file]['tmp_name'], $target_file);
    return basename($_FILES[$file]["name"]);
}

function updateFile($file, $target_dir, $fileNameOld)
{
    if ($_FILES[$file]['name'] != '') {
        return upFile($file, $target_dir);
    } else {
        return $fileNameOld;
    }
}

function checkLogin()
{
    if (isset($_SESSION['login'])) {
        if ($_SESSION['login'][10] != 1 AND $_SESSION['login'][10] != 0) {
            header('location: /index.php');
        }
    } else {
        header('location: /?c=account&a=login');
    }
}

function checkLogin2()
{
    if (!isset($_SESSION['login'])) {
        header('location: /?c=account&a=login');
    }
}

function checkLogin3()
{
    if (isset($_SESSION['login'])) {
        if ($_SESSION['login'][10] != 0) {
            header('location: /admin.php');
        }
    }
}