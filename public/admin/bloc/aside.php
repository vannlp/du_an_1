<script src="<?= URL_PUBLIC ?>admin/js/aside.js"></script>
<a href="#" class="aside__h1Link">
    <h1 class="aside__h1">
        LifeSign
    </h1>
</a>
<div class="aside__list">
    <h2 class="aside__list-title">
        Chức năng
    </h2>
    <ul class="aside__list-item">
        <li class="aside__list-li">
            <a href="#" class="aside__list-link">
                <i class="fas fa-home icon"></i>
                Home
            </a>
        </li>
        <li class="aside__list-li even">
            <a href="#" class="aside__list-link row--thu1">
                <div>
                    <i class="far fa-newspaper icon"></i>
                    <span>Tin tức</span>
                </div>
                <i class="fas fa-angle-right icon--dinhHuong"></i>
            </a>
            <ul class="aside__list-2">
                <li class="aside__list-li">
                    <a href="<?= URL_WEB ?>/admin.php?c=newAdmin&a=list" class="aside__list-link">
                        Danh sách
                    </a>
                </li>
                <li class="aside__list-li">
                    <a href="<?= URL_WEB ?>/admin.php?c=newAdmin&a=addNews" class="aside__list-link">
                        Thêm mới
                    </a>
                </li>
                <li class="aside__list-li">
                    <a href="<?= URL_WEB ?>/admin.php?c=newAdmin&a=danhmuc" class="aside__list-link">
                        Danh mục
                    </a>
                </li>
            </ul>
        </li>
        <li class="aside__list-li even">
            <a href="#" class="aside__list-link row--thu1">
                <div>
                    <i class="far fa-newspaper icon"></i>
                    <span>Sản phẩm</span>
                </div>
                <i class="fas fa-angle-right icon--dinhHuong"></i>
            </a>
            <ul class="aside__list-2">
                <li class="aside__list-li">
                    <a href="<?= URL_WEB ?>/admin.php?c=san_pham&a=add_danh_muc" class="aside__list-link">
                        Danh mục
                    </a>
                </li>
            </ul>
        </li>
    </ul>
</div>