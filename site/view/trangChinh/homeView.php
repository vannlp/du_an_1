<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/index.css">
<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/tintuc.css">
<script src="<?= URL_PUBLIC ?>site/js/slideShow.js"></script>
<script src="<?= URL_PUBLIC ?>site/js/slicksliderDM.js"></script>

<div class="slide container">
    <div class="slider-wrap">
        <div class="slider-main">
            <div class="slider-item">
                <img src="<?= URL_PUBLIC ?>site/img/banner/banner1.png" alt="" class="slider-item__img" />
            </div>
            <div class="slider-item">
                <img src="<?= URL_PUBLIC ?>site/img/banner/banner2.png" alt="" class="slider-item__img" />
            </div>
            <div class="slider-item">
                <img src="<?= URL_PUBLIC ?>site/img/banner/banner3.png" alt="" class="slider-item__img" />
            </div>
            <div class="slider-item">
                <img src="<?= URL_PUBLIC ?>site/img/banner/banner4.png" alt="" class="slider-item__img" />
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
        <div class="btn btn-slider btn-next">
            <i class="">
                <ion-icon name="arrow-dropright"></ion-icon>
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
                <li data-index="2" class="dot-item"></li>
                <li data-index="3" class="dot-item"></li>
            </ul>
        </div>
    </div>
</div>
<!-- k???t th??c slide -->
<!-- b???t ?????u danh m???c -->
<div class="container">
    <div class="danhMucAll">
        <h1>Danh M???c</h1>
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
    <p> <?php echo $data['soluongmagiam'][0] ?> </p>
</div>

<section class="tintuc__top container">
    <h2>Tin hot</h2>
    <div class="tintuc__wrapper-slider">
        <?php foreach ($data['tinTucData'] as $val) { ?>
            <a href="<?= URL_WEB ?>?c=tintuc&a=index&id=<?= $val[0] ?>" class="tintuc__item-slider">
                <img src="<?= URL_WEB ?>/public/site/img/<?= $val[4] ?>" alt="" />
                <h4><?= $val[2] ?></h4>
            </a>
        <?php } ?>
    </div>
</section>

<div class="container sanPham">
    <div class="danhMucAll">
        <h1>S???n ph???m b??n ch???y</h1>
        <div class="danhMuc">
            <?php

            foreach ($data['sp_top'] as $sanPham) {
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
                                    <p>???? b??n ' . $sanPham[12] . '</p>
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
        </div>
    </div>
</div>

<div class="container sanPham">
    <!-- S???n ph???m -->
    <div class="main-product danhMucAll">
        <h1>S???n Ph???m</h1>
        <div class="container-c">
            <!-- khung s???n ph???m -->
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
                            <p>???? b??n ' . $sanPham['so_luong_ban'] . '</p>
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
            <!-- K???t th??c khung s???n ph???m -->
        </div>

        <div class="container">
            <ul class="phanTrang-wrapper">
                <?php
                for ($i = 1; $i <= $data['so_luong_trang']; $i++) {
                    echo '
                    <li class="phanTrang-item">
                        <a href="?page=' . $i . '" class="phanTrang-link">' . $i . '</a>
                    </li>
                    ';
                }
                ?>
            </ul>
        </div>
    </div>
    <!-- S???n Ph???m -->
</div>

<script>
    $(document).ready(function() {
        $(".tintuc__wrapper-slider").slick({
            infinite: true,
            slidesToShow: 3,
            slidesToScroll: 3,
            prevArrow: `<button type="button" class="slick-prev"><</button>`,
            nextArrow: `<button type="button" class="slick-next">></button>`,
            responsive: [{
                    breakpoint: 700,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1,
                    },
                },
                {
                    breakpoint: 1030,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 2,
                    },
                },
            ],
        });
    });
</script>