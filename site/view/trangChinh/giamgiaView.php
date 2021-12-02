<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/magiamgia.css">
      <section class="maGiamGia">
        <div class="container">
          <div class="maGiamGia-wrapper">
            <h2>Mã giảm giá</h2>
            <div class="maGiamGia-row">
              <?php
              if(empty($data['magiam'])){
                echo '<h3>Hiện chưa có mã giảm giá nào</h3>';
              }
                foreach($data['magiam'] as $magiam){
                  echo'
                    <div class="maGiamGia-item">
                    <div class="maGiamGia-img">
                      <img
                      src="public/site/img/littellogo/giamgia.png"
                        alt=""
                      />
                    </div>
                    <div class="maGiamGia-content">
                      <div class="maGiamGia-desc">
                        <h3>'.$magiam[0].'</h3>
                        <p>Giá trị giảm: '.$magiam[2].'%</p>
                      </div>
                      <br>
                      <div class="maGiamGia-hsd">
                        <span>Bắt đầu: '.$magiam[4].'</span>
                      </div>
                      <div class="maGiamGia-hsd">
                        <span>Kết thúc: '.$magiam[5].'</span>
                        <a href="?c=giamgia&a=addgiamgia&ma='.$magiam[0].'"><button class="button button--blue" name="btn-giamgia">Lưu</button></a>
                      </div>
                    </div>
                  </div>
                  ';
                }
              ?>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>
