<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/search.css">
<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/index.css">
<div class="container">
  <div class="danhMucAll sanPham showsearch">
    <div class="menuProduct">
      <div class="searchDanhmuc">
        <h4>Danh mục sản phẩm</h4>
        <ul>
          <?php
          foreach ($data['danhMuc'] as $danhMuc) {
            echo '
                    <li>
                        <a href="?c=timkiem&a=dm&id=' . $danhMuc[1] . '">
                            <p>' . $danhMuc[1] . '</p>
                        </a>
                    </li>
                        ';
          }
          ?>
        </ul>
      </div>
      <div class="searchDanhmuc">
        <h4>Giá</h4>
        <ul>
          <li><a href="?c=timkiem&a=gia&id=10000000">Dưới 10.000.000 vnđ</a></li>
          <li><a href="?c=timkiem&a=gia&id=50000000">Dưới 50.000.000 vnđ</a></li>
          <li><a href="?c=timkiem&a=gia&id=100000000">Dưới 100.000.000 vnđ</a></li>
        </ul>
      </div>
    </div>
    <style>
      @media screen and (min-width: 900px) {
        .container-c .box {
          max-width: 33.333333333333%;
          flex: 0 0 33.333333333333%;
        }
      }
    </style>
    <div class="showProduct">
      <h3 class="searchOutput">Kết quả tìm kiếm cho "<?php echo $data['tukhoa'] ?>"</h3>
      <div class="container-c">
        <!-- khung sản phẩm -->
        <?php
        // if(isset($data['view'])){
        //   echo 'Không có sản phẩm cần tìm';
        // }
        // else{
        foreach ($data['view'] as $value) {
          $sosoa = $value[9];
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
            <a href="' . URL_WEB . '?c=chitiet&a=index&id=' . $value[0] . '">
                <img src="' . URL_PUBLIC . 'site/img/' . $value[5] . '" class="product" />
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
        </div>
                ';
        }
        //}
        ?>

        <!--  -->
      </div>
    </div>
  </div>
</div>