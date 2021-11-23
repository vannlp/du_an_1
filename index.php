<?php
require_once './bring.php';
//hello

if (isset($_GET['c']) && isset($_GET['a'])) {
    $controller = $_GET['c'];
    $action = $_GET['a'];
    routerSite($controller, $action);
}else{
    $controller = 'home';
    $action = 'index';
    routerSite($controller,$action);
}
