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
        <h4>Sản phẩm mua nhiều</h4>
        <ul class="productRating">
          <li><a href="">Sản phẩm 1</a></li>
          <li><a href="">Sản phẩm 1</a></li>
        </ul>
      </div>
      <div class="searchDanhmuc">
        <h4>Giá</h4>
        <ul>
          <li><a href="">Dưới 300.000 vnđ</a></li>
          <li><a href="">Dưới 600.000 vnđ</a></li>
          <li><a href="">Dưới 1.000.000 vnđ</a></li>
        </ul>
      </div>
    </div>
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
                    <a href="' . URL_WEB . '?c=chitiet&a=index&id=' . $value[0] . '&id=' . $value[1] . '">
                        <img src="' . URL_PUBLIC . 'site/img/' . $value[5] . '" class="product" />
                        <h3 class="name">
                            <b>' . $value[3] . '</b>
                        </h3>
                        <div class="rating">
                            <span class="fa fa-star ' . $check[0] . '"></span>
                            <span class="fa fa-star ' . $check[1] . '"></span>
                            <span class="fa fa-star ' . $check[2] . '"></span>
                            <span class="fa fa-star ' . $check[3] . '"></span>
                            <span class="fa fa-star ' . $check[4] . '"></span> |
                            <span>Đã bán 1000+</span>
                        </div>
                        <p href="" class="buy1"><b>' . $value[6] . '</b></p>
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