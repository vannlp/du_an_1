<?php
require_once './bring.php';

checkLogin();

if (isset($_GET['c']) && isset($_GET['a'])) {
    $controller = $_GET['c'];
    $action = $_GET['a'];
    routerAdmin($controller, $action);
} else {
    $controller = 'home';
    $action = 'index';
    routerAdmin($controller, $action);
}
