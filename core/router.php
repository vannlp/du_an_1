<?php
function routerAdmin($controller, $action){
    // Chuyển đổi tên controller vì nó có định dạng là {Name}_Controller
    $controller = ucfirst(strtolower($controller)) . 'Controller';
    if (!file_exists(URL_ADMIN.'/controller/'.$controller.'.php')) {
        die ('Controller không tồn tại');
    }
    require_once URL_ADMIN.'/controller/'.$controller.'.php';
    //kiem tra class co ton tai hay ko
    if (!class_exists($controller)){
        die ('Controller không tồn tại');
    }
    // khoi tao controller
    $controllerObj = new $controller();
    // Kiểm tra action có tồn tại hay không
    if ( !method_exists($controllerObj, $action)){
        die ('Action không tồn tại');
    }
 
    // Gọi tới action
    $controllerObj->{$action}();
}

function routerSite($controller, $action){
    // Chuyển đổi tên controller vì nó có định dạng là {Name}_Controller
    $controller = ucfirst(strtolower($controller)) . 'Controller';
    if (!file_exists(URL_SITE.'/controller/'.$controller.'.php')) {
        die ('Controller không tồn tại');
    }
    require_once URL_SITE.'/controller/'.$controller.'.php';
    //kiem tra class co ton tai hay ko
    if (!class_exists($controller)){
        die ('Controller không tồn tại');
    }
    // khoi tao controller
    $controllerObj = new $controller();
    // Kiểm tra action có tồn tại hay không
    if ( !method_exists($controllerObj, $action)){
        die ('Action không tồn tại');
    }
 
    // Gọi tới action
    $controllerObj->{$action}();
}
