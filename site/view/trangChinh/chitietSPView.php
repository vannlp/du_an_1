<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/product.css">
<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/index.css">
<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/cart.css">

<script src="<?= URL_PUBLIC ?>site/js/product.js"></script>
<script src="<?= URL_PUBLIC ?>site/js/xulyanh.js"></script>

<section class="product container">
    <div class="productImg__wrapper">
        <div class="productImg__big">
            <img src="" alt="" id="big-img" />
        </div>

        <div class="productImg__small">
            <?php
            foreach ($data['img'] as $value) {
                echo '<img src="' . URL_PUBLIC . 'site/img/' . $value[1] . '" alt="" />';
            }
            ?>

        </div>
    </div>

    <div class="productDesc__wrapper">
        <div class="porduct__heading">
            <h3><?php echo $data['sanPhamID'][3] ?></h3>
            <div class="">
                <div class="product__sao">
                    <?php
                    $sosoa = $data['sanPhamID'][9];
                    $check = [
                        0 => '',
                        1 => '',
                        2 => '',
                        3 => '',
                        4 => '',
                    ];
                    for ($i = 0; $i < $sosoa; $i++) {
                        $check[$i] = 'action';
                    } ?>
                    <div class="rating">
                        <span class="fa fa-star <?php echo $check[0] ?>"></span>
                        <span class="fa fa-star <?php echo $check[1] ?>"></span>
                        <span class="fa fa-star <?php echo $check[2] ?>"></span>
                        <span class="fa fa-star <?php echo $check[3] ?>"></span>
                        <span class="fa fa-star <?php echo $check[4] ?>"></span></span> |
                        <span>Đã bán <?= $data['so_luong_ban'] ?></span>
                    </div>
                </div>

            </div>
        </div>

        <div class="productMota__wrapper">
            <div class="productMota__left">
                <div class="product__price-wrapper">
                    <span><?php echo number_format($data['sanPhamID'][7]) ?> VND</span>
                    <small><?php echo number_format($data['sanPhamID'][6]) ?> VND</small>
                    <span>-4%</span>
                </div>
                <div class="product__muaHang">
                    <div class="product__soLuong-wrapper">
                        <span>Số lượng còn lại: <?php echo $data['sanPhamID'][11] ?></span><br><br>
                        <p>Số lượng mua:</p><br>
                        <div class="btn-soLuong">
                            <button>-</button>
                            <input type="text" name="" id="soLuong-input" value="1" />

                            <button>+</button>
                        </div>
                    </div>
                    <?php
                    if ($data['sanPhamID'][11] != 0) {
                        echo '<button id="btn-mua" class="product__btn-mua" type="button">Chọn mua</button>';
                    } else {
                        echo '<button id="" class="btn-disabled" type="button">Sản phẩm đã hết hàng</button>';
                    }
                    ?>
                </div>
            </div>
            <div class="productMota__right">
                <div class="product__right-title">
                    <img src="https://vcdn.tikicdn.com/cache/w100/ts/seller/83/e1/c3/2c071fbb04d92608a1dbdf96f7269ca3.jpg.webp" alt="" />
                    <span><?php echo  $data['sanPhamID'][14] ?></span>
                </div>
                <div class="product__right-action">
                    <a href="?c=timkiem&a=shop&id=<?php echo  $data['sanPhamID'][2] ?>" class="product__right-btn">Xem thêm sản phẩm của shop</a>

                </div>
            </div>
        </div>
    </div>
</section>

<section class="moTa-product container">
    <h3>Mô Tả Sản Phẩm</h3>
    <div>
        <p>
            <?php echo $data['sanPhamID'][4] ?>
        </p>
    </div>
</section>

<style>
    .product-tuongTu-item img {
        width: 100%;
        display: block;
    }

    .product-tuongTu-price span {
        color: red;
        font-weight: 500;
    }
</style>
<section class="product-tuongTu">
    <div class="container">
        <div class="product-tuongTu-wrapper">
            <h3>Sản phẩm tương tự</h3>
            <div class="product-tuongTu-slider">
                <?php
                foreach ($data['sanPhamLQ'] as $value) {
                    $sosoa = $value[9];
                    $check = [
                        0 => '',
                        1 => '',
                        2 => '',
                        3 => '',
                        4 => '',
                    ];
                    for ($i = 0; $i < $sosoa; $i++) {
                        $check[$i] = 'action';
                    }
                    echo '
                        <a href="' . URL_WEB . '?c=chitiet&a=index&id=' . $value[0] . '" class="product-tuongTu-item">
                            <img src="' . URL_PUBLIC . 'site/img/' . $value[5] . '" alt="" />
                            <div class="product__main">
                                <h3 class="name">
                                    <b>' . $value[3] . '</b>
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
                                    <b>' . number_format($value[6]) . '</b>
                                    <b>' . number_format($value[7]) . '</b>
                                </p>
                            </div>
                        </a>
                    ';
                }


                ?>
            </div>
        </div>
    </div>
</section>

<section class="nhanXet container">
    <h3>Đánh Giá - Nhận Xét Từ Khách Hàng</h3>
    <div class="danhGia">

        <?php
        if (isset($_SESSION['login'])) {
            echo '
            <form action="#" method="post">
            <div class="danhGia-wrapper">
                <div class="danhGia-sao">
                    <i class="fas fa-star" data-index="0"></i>
                    <i class="fas fa-star" data-index="1"></i>
                    <i class="fas fa-star" data-index="2"></i>
                    <i class="fas fa-star" data-index="3"></i>
                    <i class="fas fa-star" data-index="4"></i>
                </div>
                <textarea name="binh-luan" id="binh-luan" class="text-binhluan" cols="30" rows="10"></textarea>
                <textarea name="idSP" id="idSP" cols="30" rows="10" style="display:none">' . $data['sanPhamID'][0] . '</textarea>
                <button type="reset" name="btn-binhluan" id="btn-binhluan" class="btn-binhluan">Gửi bình luận</button>
            </div>
            </form>
            ';
        } else {
            echo '<h4>Bạn cần đăng nhập để bình luận</h4>';
        }
        ?>
    </div>
    <div class="danhGia-list">
        <?php
        foreach ($data['binhluan'] as $binhluan) {
            $sosoa = $binhluan[6];
            $check = [
                0 => '',
                1 => '',
                2 => '',
                3 => '',
                4 => '',
            ];
            for ($i = 0; $i < $sosoa; $i++) {
                $check[$i] = 'action';
            }
            echo '
                    <div class="danhGia-list-item">
                        <div class="danhGia-list-title">
                            <img src="' . URL_WEB . '/public/site/img/' . $binhluan[16] . '" alt="" />
                            <span>' . $binhluan[9] . '</span>
                        </div>
                        <div class="danhGia-list-desc">
                            <div class="product__sao">
                                <i class="fas fa-star  ' . $check[0] . '"></i>
                                <i class="fas fa-star  ' . $check[1] . '"></i>
                                <i class="fas fa-star  ' . $check[2] . '"></i>
                                <i class="fas fa-star  ' . $check[3] . '"></i>
                                <i class="fas fa-star  ' . $check[4] . '"></i>
                            </div>
                            <div class="danhGia-list-noiDung">
                                <span>' . $binhluan[4] . ' |</span> 
                            </div>
                        </div>
                    </div>    
                        ';
        }
        ?>
    </div>
    </div>
</section>
<div class="add_gio_hang">
    <span>Thêm vào giỏ hàng thành công</span>
</div>
<script src="<?= URL_WEB ?>/public/site/js/xulybinhluan.js"></script>
<script src="<?= URL_WEB ?>/public/site/js/xulygiohang.js"></script>

<script>
    $(document).ready(() => {
        $(".product-tuongTu-slider").slick({
            infinite: true,
            slidesToShow: 5,
            slidesToScroll: 3,
            prevArrow: `<button type="button" class="slick-prev"><</button>`,
            nextArrow: `<button type="button" class="slick-next">></button>`,
            responsive: [{
                    breakpoint: 800,
                    settings: {
                        slidesToShow: 3,
                    },
                },
                {
                    breakpoint: 700,
                    settings: {
                        slidesToShow: 2,
                    },
                },
            ],
        });
    });
</script>