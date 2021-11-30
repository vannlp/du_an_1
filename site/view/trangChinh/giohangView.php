<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/cart.css">
<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/index.css">
<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/product.css">
<script src="<?= URL_PUBLIC ?>site/js/product.js"></script>

<h3 class="main__cart-h3 container">Giỏ hàng</h3>
<section class="main__cart-wrapper container">
  <div class="main__cart-left">
    <div class="main__cart-sp">
      <input type="checkbox" name="" id="" />
      <div class="main__cart-title">
        <span>Tất cả</span>
      </div>
      <div class="main__cart-donGia">
        <span>Đơn giá</span>
      </div>
      <div class="main__cart-soLuong">
        <span>Số lượng</span>
      </div>
      <div class="main__cart-thanhTien">
        <span>Thành tiền</span>
      </div>
      <div class="main__cart-action">
        <span>Hành động</span>
      </div>
    </div>

    <div class="main__cart-khung">

      <?php
      foreach ($data['gio_hang'] as $value) {
        echo '
              <div class="main__cart-sp">
                <input type="checkbox" name="" id="" />
                <div class="main__cart-title">
                  <img
                    src="/public/site/img/' . $value[5] . '"
                    alt=""
                  />
                  <span>' . $value['tieu_de'] . '</span>
                </div>
                <div class="main__cart-donGia">
                  <span class="span-cart-donGia">' . number_format($value['gia_giam']) . '</span>
                </div>
                <div class="main__cart-soLuong">
                  <div class="btn-soLuong">
                    <button>-</button>
                    <input type="text" name="" id="soLuong-input" value="1" />
                    <button>+</button>
                  </div>
                </div>
                <div class="main__cart-thanhTien">
                  <span class="span-cart-TT">' . number_format($value['gia_giam']) . '</span>
                </div>
                <div class="main__cart-action">
                  <button class="btn-xoa">Xóa</button>
                </div>
              </div>
              ';
      }
      ?>
    </div>
  </div>

  <div class="main__cart-right">
    <div class="cart-right-wrapper">
      <div class="cart-thongTin-title">
        <span>Phan Tường Văn</span>
        <span>0774091026</span>
      </div>
      <div>
        <span>
          Hẻm 330, 288 Nguyễn Văn Linh, Phường An Khánh, Quận Ninh Kiều,
          Cần Thơ
        </span>
      </div>
    </div>

    <div class="cart-right-wrapper">
      <h5>Khuyến mại</h5>
      <input type="text" class="input-km" name="" id="" placeholder="Nhập mã khuyến mãi" />
      <button class="btn-km">ok</button>
    </div>

    <div class="cart-right-wrapper">
      <div class="cart-right-thanhToan">
        <span>Tạm tính</span>
        <span>0</span>
      </div>
      <div class="cart-right-thanhToan">
        <span>Giảm giá</span>
        <span>0</span>
      </div>
      <div class="cart-right-thanhToan">
        <span>Tổng cộng</span>
        <span>0</span>
      </div>
      <button class="btn-thanhToan">Thanh toán</button>
    </div>
  </div>
</section>
<script>

</script>
<script src="./main.js"></script>
<script src="./slieder.js"></script>