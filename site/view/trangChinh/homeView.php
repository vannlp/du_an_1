<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/index.css">
<script src="<?= URL_PUBLIC ?>site/js/slideShow.js"></script>
<script src="<?= URL_PUBLIC ?>site/js/slicksliderDM.js"></script>

<div class="slide container">
    <div class="slider-wrap">
        <div class="slider-main">
            <div class="slider-item">
                <img src="<?= URL_PUBLIC ?>site/img/banner1.png" alt="" class="slider-item__img" />
            </div>
            <div class="slider-item">
                <img src="<?= URL_PUBLIC ?>site/img/banner2.png" alt="" class="slider-item__img" />
            </div>
        </div>

        <div class="btn btn-slider btn-prev">
            <i class="">
                <ion-icon name="arrow-dropleft"></ion-icon>
            </i>
        </div>
        <div class="btn btn-slider btn-next">
            <i class="">
                <ion-icon name="arrow-dropright"></ion-icon>
            </i>
        </div>
        <div class="dot-slider">
            <ul class="dot-list">
                <li data-index="0" class="dot-item active"></li>
                <li data-index="1" class="dot-item"></li>
            </ul>
        </div>
    </div>
</div>
<!-- kết thúc slide -->
<!-- bắt đầu danh mục -->
<div class="container">
    <div class="danhMucAll">
        <h1>Danh Mục</h1>
        <div class="danhMuc">
            <!--  -->
            <?php
            foreach ($data['danhMuc'] as $danhMuc) {
                echo '
                    <a href="?c=timkiem&a=dm&id=' . $danhMuc[1] . '" class="item_danhMuc">
                        <img src="' . URL_PUBLIC . 'site/img/' . $danhMuc[3] . '" alt="" />
                        <p>' . $danhMuc[1] . '</p>
                    </a>
                    ';
            }
            ?>
            <!--  -->
        </div>
    </div>
</div>

<div class="icon_giamgia">
    <a href="?c=giamgia&a=index"><img src="https://i.pinimg.com/originals/fd/2c/1a/fd2c1a96b654e220d09525f006482477.gif"></a>
</div>

<div class="container news">
    <a href="" class="news-item"><img src="<?= URL_PUBLIC ?>site/img/demo.jpg" class="" /></a>
    <a href="" class="news-item"><img src="<?= URL_PUBLIC ?>site/img/demo.jpg" class="" /></a>
    <a href="" class="news-item"><img src="<?= URL_PUBLIC ?>site/img/demo.jpg" class="" /></a>
</div>



<div class="container sanPham">
    <!-- Sản phẩm -->
    <div class="main-product danhMucAll">
        <h1>Sản Phẩm</h1>
        <div class="container-c">
            <!-- khung sản phẩm -->
            <?php

            foreach ($data['sanPham'] as $sanPham) {
                $sosoa = $sanPham[9];
                $check = [
                    0 => '',
                    1 => '',
                    2 => '',
                    3 => '',
                    4 => '',
                ];
                for ($i = 0; $i < $sosoa; $i++) {
                    $check[$i] = 'checked';
                }
                echo '
            <div class="box">
                <a href="' . URL_WEB . '?c=chitiet&a=index&id=' . $sanPham[0] . '">
                    <img src="' . URL_PUBLIC . 'site/img/' . $sanPham[5] . '" class="product" />
                    <div class="product__main">
                        <h3 class="name">
                            <b>' . $sanPham[3] . '</b>
                        </h3>
                        <div class="rating">
                            <span class="fa fa-star ' . $check[0] . '"></span>
                            <span class="fa fa-star ' . $check[1] . '"></span>
                            <span class="fa fa-star ' . $check[2] . '"></span>
                            <span class="fa fa-star ' . $check[3] . '"></span>
                            <span class="fa fa-star ' . $check[4] . '"></span>
                            <p>Đã bán 1000+</p>
                        </div>
                        <p class="buy1">
                            <b>' . number_format($sanPham[6]) . '</b>
                            <b>' . number_format($sanPham[7]) . '</b>
                        </p>
                    </div>
                </a>
            </div>
            ';
            }
            ?>
            <!-- Kết thúc khung sản phẩm -->
        </div>
    </div>
    <!-- Sản Phẩm -->
</div>