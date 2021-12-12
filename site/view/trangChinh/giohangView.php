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
                  <span>' . $value[4] . '</span>
                </div>
                <div class="main__cart-donGia">
                  <span class="span-cart-donGia">' . number_format($value[6]) . '</span>
                </div>
                <div class="main__cart-soLuong">
                  <div class="btn-soLuong">
                    <button>-</button>
                    <input type="text" name="" id="soLuong-input" value="' . $value[1] . '" />
                    <button>+</button>
                  </div>
                </div>
                <div class="main__cart-thanhTien">
                  <span class="span-cart-TT"></span>
                </div>
                <div class="main__cart-action">
                  <p style="display: none;">' . $value[7] . '</p>
                  <a href="?c=giohang&a=delete_cart&id=' . $value[7] . '" class="btn-xoa">Xóa</a>
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
        <p>Thông tin của bạn</p><br>
        <span><?php echo $_SESSION['login'][2] ?></span>
        <span><?php echo $_SESSION['login'][4] ?></span>
      </div>
      <div>
        <span>
          <?php echo $_SESSION['login'][3] ?>
        </span>
      </div>
    </div>
    <form method="POST" action="?c=giohang&a=thanh_toan">
      <div class="cart-right-wrapper">
        <?php
        if (isset($data['magiam'])) {
          echo '<h5>Mã khuyến mãi của bạn</h5>';

          foreach ($data['magiam'] as $ma) {
            echo '
            <div class="ma_khuyen_mai_wrapper">
              <span>' . $ma[0] . '</span>||
              <span>' . $ma[2] . '</span>%
            </div>
          ';
          }
        } else {
          echo '<h5>Bạn không có mã giảm giá nào</h5>';
        }
        ?>
        <br>
        <h5>Khuyến mại</h5>
        <input type="text" class="input-km" name="ma_khuyen_mai" id="input-khuyen-mai" placeholder="Nhập mã khuyến mãi" />
        <button class="btn-km" id="btn-khuyen-mai" type="button">ok</button>
      </div>

      <div class="cart-right-wrapper">
        <div class="cart-right-thanhToan" id="tamTinh">
          <span>Tạm tính</span>
          <span>0</span>
        </div>
        <div class="cart-right-thanhToan">
          <span>Giảm giá</span>
          <span id="giam_gia_id">0</span>
        </div>
        <div class="cart-right-thanhToan" id="tongCong">
          <span>Tổng cộng</span>
          <input readonly type="number" name="tong_tien" id="">
        </div>
        <?php
        if ($_SESSION['login'][3] == '' || $_SESSION['login'][4] == '') {
          echo '
          <button name="btn-submit" class="btn-thanhToan" disabled>Bạn còn thiếu thông tin</button>
          ';
        } else {
          echo '
          <button type="submit" name="btn-submit" class="btn-thanhToan">Thanh toán</button>
        ';
        }
        ?>
      </div>
    </form>
</section>
<script>
  $(document).ready(() => {
    const input_km = document.querySelector('#input-khuyen-mai')
    const btn_km = document.querySelector('#btn-khuyen-mai')

    const ma_khuyen_mai = document.querySelectorAll('.ma_khuyen_mai_wrapper')
    const ma_khuyen_mai_span1 = document.querySelectorAll('.ma_khuyen_mai_wrapper>span:first-child')
    const ma_khuyen_mai_span2 = document.querySelectorAll('.ma_khuyen_mai_wrapper>span:last-child')

    const tong_tien = document.querySelector('#tongCong>input')
    const cart_giam_gia = document.querySelector("#giam_gia_id");

    btn_km.addEventListener('click', () => {
      let data_km = input_km.value
      let tongTien = tong_tien.value
      // console.log(tongTien);
      ma_khuyen_mai.forEach((data, index) => {
        let mkm_text = ma_khuyen_mai_span1[index].innerText
        if (data_km === mkm_text) {
          let mkm_phan_tram = ma_khuyen_mai_span2[index].innerText
          let giam_gia = tongTien * (mkm_phan_tram / 100)
          cart_giam_gia.innerText = giam_gia;
          tong_tien.value = tongTien - giam_gia;
        }
      })
    })
  });
</script>
<!-- <script src="./main.js"></script> -->
<!-- <script src="./slieder.js"></script> -->
<script>
  $(document).ready(() => {
    const donGia = document.querySelectorAll('.span-cart-donGia')
    const btnsoLuong = document.querySelectorAll('.btn-soLuong>input')
    const tongGia = document.querySelectorAll('.span-cart-TT')
    const btnTru = document.querySelectorAll('.btn-soLuong>button:first-child')
    const btnCong = document.querySelectorAll('.btn-soLuong>button:last-child')
    const Tamtinh = document.querySelector('#tamTinh>span:last-child')
    const tongCong = document.querySelector('#tongCong>input')
    const id_sp = document.querySelectorAll('.main__cart-action>p')

    var tong = 0;
    donGia.forEach((value, index) => {
      let gia = value.innerText
      gia = gia.replace(/,/g, '');
      let sl = Number(btnsoLuong[index].value)
      let gia_Tong = gia * sl;
      // console.log(gia_Tong, index);
      tongGia[index].innerText = gia_Tong;

      btnCong[index].addEventListener('click', () => {
        let id_gh = id_sp[index].innerText;

        // alert('hello')
        setTimeout(() => {
          let gia1 = value.innerText
          let sl1 = Number(btnsoLuong[index].value)
          tong = tong - gia_Tong
          gia_Tong = thanhTien(gia1, sl1)
          tong = tong + gia_Tong
          tongGia[index].innerText = gia_Tong;
          capnhapTong()

          console.log(gia_Tong, sl1, id_gh);
          $.get(
            '?c=giohang&a=capNhapSoLuong', {
              tong_tien: gia_Tong,
              so_luong: sl1,
              id_gio_hang: Number(id_gh)
            },
            function() {

            }
          )
        }, 100)
      })

      btnTru[index].addEventListener('click', () => {
        let id_gh = id_sp[index].innerText;

        // alert('hello')
        setTimeout(() => {
          let gia1 = value.innerText
          let sl1 = Number(btnsoLuong[index].value)
          tong = tong - gia_Tong
          gia_Tong = thanhTien(gia1, sl1)
          tong = tong + gia_Tong
          tongGia[index].innerText = gia_Tong;
          capnhapTong()

          // console.log(gia_Tong, sl1, id_sanpham);
          $.get(
            '?c=giohang&a=capNhapSoLuong', {
              tong_tien: gia_Tong,
              so_luong: sl1,
              id_gio_hang: id_gh
            },
            function() {

            }
          )
        }, 100)
      })

      tong += gia_Tong
    })

    function capnhapTong() {
      Tamtinh.innerText = tong;
      tongCong.value = tong;
    }
    capnhapTong()

    function thanhTien(gia, soLuong) {
      gia = gia.replace(/,/g, '');
      let sl = Number(soLuong)
      let gia_Tong = gia * sl;
      // console.log(gia_Tong, index);
      return gia_Tong
    }
  })
</script>