<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/product.css">
<script src="<?= URL_PUBLIC ?>site/js/product.js"></script>
<script src="<?= URL_PUBLIC ?>site/js/xulyanh.js"></script>

<section class="product container">
    <div class="productImg__wrapper">
        <div class="productImg__big">
            <img src="" alt="" id="big-img" />
        </div>

        <div class="productImg__small">
            <img src="<?php echo URL_PUBLIC.'site/img/product/realme3pro.png' ?>" alt="" />
            <img src="<?php echo URL_PUBLIC.'site/img/product/realme3pro1.png' ?>" alt="" />
        </div>
    </div>

    <div class="productDesc__wrapper">
        <div class="porduct__heading">
            <?php foreach($data['sanPhamID'] as $sanPham) ?>
            <h3><?php echo $sanPham[3] ?></h3>
            <div class="">
                <div class="product__sao">
                    <?php 
                    $sosoa = $sanPham[9];
                    $check = [
                        0=>'',
                        1=>'',
                        2=>'',
                        3=>'',
                        4=>'',
                    ];
                    for($i = 0; $i < $sosoa; $i++){
                        $check[$i] = 'action';
                    } ?>
                    <div class="rating">
                        <span class="fa fa-star <?php echo $check[0] ?>"></span>
                        <span class="fa fa-star <?php echo $check[1] ?>"></span>
                        <span class="fa fa-star <?php echo $check[2] ?>"></span>
                        <span class="fa fa-star <?php echo $check[3] ?>"></span>
                        <span class="fa fa-star <?php echo $check[4] ?>"></span></span> |
                        <span>Đã bán 82</span>
                    </div>
                </div>
                
            </div>
        </div>

        <div class="productMota__wrapper">
            <div class="productMota__left">
                <div class="product__price-wrapper">
                    <span><?php echo $sanPham[6] ?> VND</span>
                    <small><?php echo $sanPham[7] ?> VND</small>
                    <span>-4%</span>
                </div>
                <div class="product__muaHang">
                    <div class="product__soLuong-wrapper">
                        <span>Số lượng:</span><br />
                        <div class="btn-soLuong">
                            <button>-</button>
                            <input type="text" name="" id="soLuong-input" value="1" />
                            <button>+</button>
                        </div>
                    </div>
                    <a href="#" class="product__btn-mua">Chọn mua</a>
                </div>
            </div>
            <div class="productMota__right">
                <div class="product__right-title">
                    <img src="https://vcdn.tikicdn.com/cache/w100/ts/seller/83/e1/c3/2c071fbb04d92608a1dbdf96f7269ca3.jpg.webp" alt="" />
                    <span>THẮNG THAO MOBILE</span>
                </div>
                <div class="product__right-action">
                    <a href="#" class="product__right-btn">Xem Shop</a>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="moTa-product container">
    <h3>Mô Tả Sản Phẩm</h3>
    <div>
        <p>
        <?php echo $sanPham[4] ?>
        </p>
    </div>
</section>

<section class="product-tuongTu">
    <div class="container">
        <div class="product-tuongTu-wrapper">
            <h3>Sản phẩm tương tự</h3>
            <div class="product-tuongTu-slider">
                <a href="#" class="product-tuongTu-item">
                    <img src="https://salt.tikicdn.com/cache/200x200/ts/product/16/75/dd/65cb93e9e792b114b8d1682f49c607e4.jpg.webp" alt="" />
                    <h4>Title sản phẩm</h4>
                    <div class="product-tuongTu-danhGia">
                        <div class="product__sao">
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <span>Đã bán 20</span>
                    </div>
                    <div class="product-tuongTu-price">
                        <span>3.990.000VND</span>
                    </div>
                </a>
                <a href="#" class="product-tuongTu-item">
                    <img src="https://salt.tikicdn.com/cache/200x200/ts/product/16/75/dd/65cb93e9e792b114b8d1682f49c607e4.jpg.webp" alt="" />
                    <h4>Title sản phẩm</h4>
                    <div class="product-tuongTu-danhGia">
                        <div class="product__sao">
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <span>Đã bán 20</span>
                    </div>
                    <div class="product-tuongTu-price">
                        <span>3.990.000VND</span>
                    </div>
                </a>
                <a href="#" class="product-tuongTu-item">
                    <img src="https://salt.tikicdn.com/cache/200x200/ts/product/16/75/dd/65cb93e9e792b114b8d1682f49c607e4.jpg.webp" alt="" />
                    <h4>Title sản phẩm</h4>
                    <div class="product-tuongTu-danhGia">
                        <div class="product__sao">
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <span>Đã bán 20</span>
                    </div>
                    <div class="product-tuongTu-price">
                        <span>3.990.000VND</span>
                    </div>
                </a>
                <a href="#" class="product-tuongTu-item">
                    <img src="https://salt.tikicdn.com/cache/200x200/ts/product/16/75/dd/65cb93e9e792b114b8d1682f49c607e4.jpg.webp" alt="" />
                    <h4>Title sản phẩm</h4>
                    <div class="product-tuongTu-danhGia">
                        <div class="product__sao">
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <span>Đã bán 20</span>
                    </div>
                    <div class="product-tuongTu-price">
                        <span>3.990.000VND</span>
                    </div>
                </a>
                <a href="#" class="product-tuongTu-item">
                    <img src="https://salt.tikicdn.com/cache/200x200/ts/product/16/75/dd/65cb93e9e792b114b8d1682f49c607e4.jpg.webp" alt="" />
                    <h4>Title sản phẩm</h4>
                    <div class="product-tuongTu-danhGia">
                        <div class="product__sao">
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <span>Đã bán 20</span>
                    </div>
                    <div class="product-tuongTu-price">
                        <span>3.990.000VND</span>
                    </div>
                </a>
                <a href="#" class="product-tuongTu-item">
                    <img src="https://salt.tikicdn.com/cache/200x200/ts/product/16/75/dd/65cb93e9e792b114b8d1682f49c607e4.jpg.webp" alt="" />
                    <h4>Title sản phẩm</h4>
                    <div class="product-tuongTu-danhGia">
                        <div class="product__sao">
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <span>Đã bán 20</span>
                    </div>
                    <div class="product-tuongTu-price">
                        <span>3.990.000VND</span>
                    </div>
                </a>
                <a href="#" class="product-tuongTu-item">
                    <img src="https://salt.tikicdn.com/cache/200x200/ts/product/16/75/dd/65cb93e9e792b114b8d1682f49c607e4.jpg.webp" alt="" />
                    <h4>Title sản phẩm</h4>
                    <div class="product-tuongTu-danhGia">
                        <div class="product__sao">
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <span>Đã bán 20</span>
                    </div>
                    <div class="product-tuongTu-price">
                        <span>3.990.000VND</span>
                    </div>
                </a>
                <a href="#" class="product-tuongTu-item">
                    <img src="https://salt.tikicdn.com/cache/200x200/ts/product/16/75/dd/65cb93e9e792b114b8d1682f49c607e4.jpg.webp" alt="" />
                    <h4>Title sản phẩm</h4>
                    <div class="product-tuongTu-danhGia">
                        <div class="product__sao">
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <span>Đã bán 20</span>
                    </div>
                    <div class="product-tuongTu-price">
                        <span>3.990.000VND</span>
                    </div>
                </a>
                <a href="#" class="product-tuongTu-item">
                    <img src="https://salt.tikicdn.com/cache/200x200/ts/product/16/75/dd/65cb93e9e792b114b8d1682f49c607e4.jpg.webp" alt="" />
                    <h4>Title sản phẩm</h4>
                    <div class="product-tuongTu-danhGia">
                        <div class="product__sao">
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <span>Đã bán 20</span>
                    </div>
                    <div class="product-tuongTu-price">
                        <span>3.990.000VND</span>
                    </div>
                </a>
                <a href="#" class="product-tuongTu-item">
                    <img src="https://salt.tikicdn.com/cache/200x200/ts/product/16/75/dd/65cb93e9e792b114b8d1682f49c607e4.jpg.webp" alt="" />
                    <h4>Title sản phẩm</h4>
                    <div class="product-tuongTu-danhGia">
                        <div class="product__sao">
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <span>Đã bán 20</span>
                    </div>
                    <div class="product-tuongTu-price">
                        <span>3.990.000VND</span>
                    </div>
                </a>
                <a href="#" class="product-tuongTu-item">
                    <img src="https://salt.tikicdn.com/cache/200x200/ts/product/16/75/dd/65cb93e9e792b114b8d1682f49c607e4.jpg.webp" alt="" />
                    <h4>Title sản phẩm</h4>
                    <div class="product-tuongTu-danhGia">
                        <div class="product__sao">
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star action"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <span>Đã bán 20</span>
                    </div>
                    <div class="product-tuongTu-price">
                        <span>3.990.000VND</span>
                    </div>
                </a>
            </div>
        </div>
    </div>
</section>

<section class="nhanXet container">
    <h3>Đánh Giá - Nhận Xét Từ Khách Hàng</h3>
    <div class="danhGia">
        <form action="#" method="post" class="danhGia-wrapper">
            <div class="danhGia-sao">
                <i class="fas fa-star" data-index="0"></i>
                <i class="fas fa-star" data-index="1"></i>
                <i class="fas fa-star" data-index="2"></i>
                <i class="fas fa-star" data-index="3"></i>
                <i class="fas fa-star" data-index="4"></i>
            </div>
            <textarea name="" id="" cols="30" rows="10"></textarea>
            <button>Submit</button>
        </form>
    </div>

    <div class="danhGia-list">
        <div class="danhGia-list-item">
            <div class="danhGia-list-title">
                <img src="https://vcdn.tikicdn.com/cache/w100/ts/seller/83/e1/c3/2c071fbb04d92608a1dbdf96f7269ca3.jpg.webp" alt="" />
                <span>Vĩnh Tùng Trần</span>
            </div>
            <div class="danhGia-list-desc">
                <div class="product__sao">
                    <i class="fas fa-star action"></i>
                    <i class="fas fa-star action"></i>
                    <i class="fas fa-star action"></i>
                    <i class="fas fa-star action"></i>
                    <i class="fas fa-star"></i>
                </div>
                <div class="danhGia-list-noiDung">
                    <p>Sản phẩm rất tốt</p>
                </div>
            </div>
        </div>
        <div class="danhGia-list-item">
            <div class="danhGia-list-title">
                <img src="https://vcdn.tikicdn.com/cache/w100/ts/seller/83/e1/c3/2c071fbb04d92608a1dbdf96f7269ca3.jpg.webp" alt="" />
                <span>Vĩnh Tùng Trần</span>
            </div>
            <div class="danhGia-list-desc">
                <div class="product__sao">
                    <i class="fas fa-star action"></i>
                    <i class="fas fa-star action"></i>
                    <i class="fas fa-star action"></i>
                    <i class="fas fa-star action"></i>
                    <i class="fas fa-star"></i>
                </div>
                <div class="danhGia-list-noiDung">
                    <p>Sản phẩm rất tốt</p>
                </div>
            </div>
        </div>
        <div class="danhGia-list-item">
            <div class="danhGia-list-title">
                <img src="https://vcdn.tikicdn.com/cache/w100/ts/seller/83/e1/c3/2c071fbb04d92608a1dbdf96f7269ca3.jpg.webp" alt="" />
                <span>Vĩnh Tùng Trần</span>
            </div>
            <div class="danhGia-list-desc">
                <div class="product__sao">
                    <i class="fas fa-star action"></i>
                    <i class="fas fa-star action"></i>
                    <i class="fas fa-star action"></i>
                    <i class="fas fa-star action"></i>
                    <i class="fas fa-star"></i>
                </div>
                <div class="danhGia-list-noiDung">
                    <p>Sản phẩm rất tốt</p>
                </div>
            </div>
        </div>
        <div class="danhGia-list-item">
            <div class="danhGia-list-title">
                <img src="https://vcdn.tikicdn.com/cache/w100/ts/seller/83/e1/c3/2c071fbb04d92608a1dbdf96f7269ca3.jpg.webp" alt="" />
                <span>Vĩnh Tùng Trần</span>
            </div>
            <div class="danhGia-list-desc">
                <div class="product__sao">
                    <i class="fas fa-star action"></i>
                    <i class="fas fa-star action"></i>
                    <i class="fas fa-star action"></i>
                    <i class="fas fa-star action"></i>
                    <i class="fas fa-star"></i>
                </div>
                <div class="danhGia-list-noiDung">
                    <p>Sản phẩm rất tốt</p>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    $(document).ready(() => {
        $(".product-tuongTu-slider").slick({
            infinite: true,
            slidesToShow: 5,
            slidesToScroll: 3,
            prevArrow: `<button type="button" class="slick-prev"><</button>`,
            nextArrow: `<button type="button" class="slick-next">></button>`,
            responsive: [{
                    breakpoint: 770,
                    settings: {
                        slidesToShow: 4,
                    },
                },
                {
                    breakpoint: 500,
                    settings: {
                        slidesToShow: 2,
                    },
                },
            ],
        });
    });
</script>